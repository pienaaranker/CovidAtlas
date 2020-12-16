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
            VStack {
                CheckList()
                CovidPass(status: ModelData().covidAccessStatus)
                    .padding(.bottom, 8)
                VaccineCard(status: ModelData().vaccineElectionStatus)
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
