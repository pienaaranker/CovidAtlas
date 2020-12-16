//
//  MainContainer.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct MainContainer: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0.0) {
                HStack{
                    Spacer()
                    Text("")
                        .frame(height: 44)
                    Spacer()
                }
                .background(Colors.secondaryGradient)
                CheckList()
                    .padding(.bottom, 24)
                CovidPass(status: ModelData().covidAccessStatus)
                    .padding(.bottom, 16)
                VaccineCard(status: ModelData().vaccineElectionStatus)
                    .padding(.bottom, 8)
                MedicalCard()
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Colors.secondary, Colors.secondaryGradient]), startPoint: .topLeading, endPoint: .bottomTrailing))
        
    }
}

struct MainContainer_Previews: PreviewProvider {
    static var previews: some View {
        MainContainer()
    }
}
