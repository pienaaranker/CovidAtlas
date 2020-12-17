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
                NavigationLink(
                    destination: MedicalDetail(details: ModelData().medicalData)) {
                    Text(MedicalCardViewModel.Strings.buttonText)
                        .foregroundColor(Colors.Button.textColor)
                        .frame(height: 44)
                        .padding([.leading, .trailing], 30)
                }
                
                
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
