//
//  RetakeAttestation.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct RetakeAttestation: View {
    var body: some View {
        
        HStack {
            Spacer()
            Button("Retake Attestation") {
                print("retake")
            }
            .padding()
            .background(Color.clear)
            .foregroundColor(Colors.Button.background)
            Spacer()
        }
        .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(Colors.Button.background, lineWidth: 1))
        .cornerRadius(10)
        .padding()

    }
}

struct RetakeAttestation_Previews: PreviewProvider {
    static var previews: some View {
        RetakeAttestation()
    }
}
