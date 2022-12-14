//
//  ResultsTableView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by acrn on 01/12/22.
//

import SwiftUI

struct ResultsTableView: View {
    
    let sportType: String
    let models = LocationStore()
    let mapViewController = MapViewController()
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                NavigationLink{
                    MapView(locations: mapViewController.setupList(sportName: sportType))
                }label:{
                    SeeOnMapView()
                }.buttonStyle(
                    PlainButtonStyle()
                )
                VStack(spacing: 8){
                    ForEach(models.modelDict[sportType]!) { loc in
                        let coord = loc.coordinate
                        NavigationLink {
                            ResultView(exerciseType: sportType, distance: "\(DistanceBetweenTwoPoints.calculate(to: coord ?? CLLocationCoordinate2D()).rounded())", placeName: loc.name, placeAdress: loc.address, isItOpen: true, workingTime: loc.time, action: {})
                        } label: {
                            SeeAllComponent(image: loc.asset, localName: loc.name, type: loc.category, isfree: loc.free, distance: "\(DistanceBetweenTwoPoints.calculate(to: coord ?? CLLocationCoordinate2D()).rounded())")
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

struct ResultsTableView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsTableView(sportType: "Skate")
    }
}
