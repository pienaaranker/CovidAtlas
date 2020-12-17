//
//  TimeLine.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/17.
//

import SwiftUI

struct TimeLine: View {
    var startDate: String
    var endDate: String
    
    var body: some View {
        VStack {
            HStack(spacing: -4.0) {
                Spacer()
                
                Circle()
                    .foregroundColor(Colors.Text.primaryTextColor)
                    .frame(width: 30, height: 30)
                Rectangle()
                    .foregroundColor(Colors.Text.primaryTextColor)
                    .frame(width: 150, height: 2)
                Image("shield_check")
                    .resizable()
                    .frame(width: 35, height: 40)

                    
                Spacer()
            }
            HStack(spacing: 0) {
                Spacer()
                Text(startDate)
                    .modifier(CTextStyle())
                Spacer(minLength: 130)
                Text(endDate)
                    .modifier(CTextStyle())
                Spacer()
            }
        }
    }
}

struct TimeLine_Previews: PreviewProvider {
    static var previews: some View {
        let data = ModelData().medicalData
        TimeLine(startDate: data.startDate, endDate: data.endDate)
    }
}
