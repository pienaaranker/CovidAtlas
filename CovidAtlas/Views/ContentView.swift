//
//  ContentView.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/10.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {                
                    CovidPass(status: ModelData().covidAccessStatus)
                        .padding(.bottom, 8)
                    VaccineCard(status: ModelData().vaccineElectionStatus)
                    MedicalCard()
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Colors.secondary, Colors.secondaryGradient]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .ignoresSafeArea()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
