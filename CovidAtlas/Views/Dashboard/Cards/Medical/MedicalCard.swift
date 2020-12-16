//
//  MedicalCard.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import SwiftUI

struct MedicalCard: View {
    let viewModel = MedicalCardViewModel()
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text(MedicalCardViewModel.Strings.medicalText)
                .padding()
                .modifier(CTextStyle())
            
            HStack {
                Spacer()
                Button(MedicalCardViewModel.Strings.buttonText) {
                    print("button pressed")
                }
                .padding([.leading, .trailing], 30)
                .buttonStyle(CButtonStyle())
                Spacer()
            }
            .background(Colors.Button.background)
            .cornerRadius(8)
            .padding([.leading, .trailing, .bottom])
        }
        .background(Colors.secondary)
        .cornerRadius(16)
        .shadow(color: Colors.Card.shadow, radius: 12, x: 3, y: 8)
        .padding([.leading, .trailing, .bottom])
    }
}


struct MedicalCard_Previews: PreviewProvider {
    static var previews: some View {
        MedicalCard()
    }
}
