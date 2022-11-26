//
//  InitialCard.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 26/11/22.
//

import Foundation
import SwiftUI

struct InitialCard: View {
    
    let image: String
    let title: String
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        
        ZStack{
            
            Color.white
                .ignoresSafeArea()
            
            HStack {
                
                Spacer()
                    .frame(width: 8)
                
                Rectangle()
                    .frame(height: height)
                    .cornerRadius(16)
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 20, y: 20)
                
                Spacer()
                    .frame(width: 8)
                
            }
            
            
            HStack{
                
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text(title)
                    .fontWeight(.semibold)
                    .padding(8)
            }
           
        }
        
        
    }
}

struct InitialCard_Previews: PreviewProvider {
    static var previews: some View {
        InitialCard(image: "flatBlue", title: "Esportes", height: 90, action: {})
    }
}







