//
//  CardsRow.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/13.
//

import SwiftUI

struct VaccineCard: View {
    var status: VaccineElectionStatus
    let viewModel = VacinneCardViewModel()
    
    var body: some View {
                
        VStack(alignment: .center) {
            
            if let imageName = viewModel.imageName(for: status) {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 100)
                    .padding(.top)
            }
            
            Text(viewModel.text(for: status))
                .modifier(CTextStyle())
                .padding()
            
            if viewModel.shouldShowButton(for: status) {                
                HStack {
                    Spacer()
                    Button(VacinneCardViewModel.Strings.buttonText) {
                        print("button pressed")
                    }
                    .padding([.leading, .trailing], 60)
                    .buttonStyle(CButtonStyle())
                    Spacer()
                }
                .background(Colors.Button.background)
                .cornerRadius(8)
                .padding([.leading, .trailing, .bottom])
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Colors.primary, Colors.primaryGradient]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(16)
        .shadow(color: Colors.Card.shadow, radius: 8, x: 3, y: 8)
        .padding([.leading, .trailing, .bottom])
    }
}

struct GetVaccineCard_Previews: PreviewProvider {
    static var previews: some View {
        VaccineCard(status: ModelData().vaccineElectionStatus)
    }
}
