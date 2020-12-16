//
//  ContentView.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/10.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Colors.secondaryGradient
            MainContainer()
                .ignoresSafeArea()
                .background(Colors.secondaryGradient)
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
