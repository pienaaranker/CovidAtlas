//
//  MainContainer.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct MainContainer: View {
    var body: some View {
        NavigationView {
            ZStack {
                Colors.secondaryGradient.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0.0) {
                        CheckList()
                        VStack(spacing: 0.0) {
                            CovidPass(status: ModelData().covidAccessStatus)
                                .padding(.bottom, 16)
                                .padding(.top, 24)
                                .padding([.leading, .trailing])
                            VaccineCard(status: ModelData().vaccineElectionStatus)
                                .padding(.bottom, 8)
                                .padding([.leading, .trailing])
                            MedicalCard()
                                .padding([.leading, .trailing])
                            BuildingAccessCard(status: ModelData().buildingAccessStatus)
                                .padding([.leading, .trailing])
                            RetakeAttestation()
                                .padding([.leading, .trailing])
                        }
                        .background(LinearGradient(gradient: Gradient(colors: [Colors.secondary, Colors.secondaryGradient]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    }
                    .background(Colors.secondaryGradient)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
            .navigationBarTitle("", displayMode: .inline)
                        .background(NavigationConfigurator { nc in
                            nc.navigationBar.barTintColor = UIColor(cgColor: Colors.primaryGradient.cgColor!)
                            nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
                        })
        }
        .accentColor( .white)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainContainer_Previews: PreviewProvider {
    static var previews: some View {
        MainContainer()
    }
}
