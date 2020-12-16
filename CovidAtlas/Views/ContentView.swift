//
//  ContentView.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/10.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        MainContainer()
            .ignoresSafeArea()
            .background(Colors.secondary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
