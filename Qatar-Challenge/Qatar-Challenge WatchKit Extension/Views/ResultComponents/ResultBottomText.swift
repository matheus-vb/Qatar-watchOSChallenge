//
//  ResultBottomText.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 29/11/22.
//

import Foundation
import SwiftUI

struct ResultBottomText: View {
    
    let placeName: String
    let placeAddress: String
    let isItOpen: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(placeName)
                .font(.system(size: 18, weight: .semibold))
                .frame(alignment: .leading)
                .frame(width: 160)
                .fixedSize()
                .lineLimit(2)
            Spacer()
            Text(placeAddress)
                .font(.system(size: 11, weight: .regular))
                .foregroundColor(Color("white80"))
                .frame(alignment: .center)
                .frame(width: 160)
                .fixedSize()
                .lineLimit(2)
            Spacer()
            HStack(alignment: .lastTextBaseline, spacing: 8){
                Circle()
                    .fill(isItOpen ? .green : Color("red100"))
                    .frame(width: 8, height: 8, alignment: .bottom)
                
                Text(isItOpen ? "Aberto agora" : "Fechado")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color("white80"))
                    .frame(alignment: .leading)
                
            }
        }
        
    }
}

struct ResultBottomText_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(exerciseType: "Futebol", distance: "40000", placeName: "Mini ramp lagoa do Araçá", placeAdress: "Avenida Boa Viagem, s/n - Boa Viagem", isItOpen: true, workingTime: "06-22", action: {})
    }
    
}
