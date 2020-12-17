//
//  Barcode.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/17.
//

import SwiftUI

struct Barcode: View {
    var name: String
    var body: some View {
        VStack {
            Text("John Smith")
                .font(.title2)
                .padding([.top], 16)
            Image("barcode")
                .resizable()
                .frame(height: 80)
                .padding([.leading, .trailing], 40)
                .padding(.bottom, 16)
        }
        .background(Color.white)
        .cornerRadius(16, corners: [.topLeft, .topRight])
        
    }
}

struct Barcode_Previews: PreviewProvider {
    static var previews: some View {
        Barcode(name: ModelData().medicalData.name)
    }
}
