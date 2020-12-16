//
//  BuildingAccessCard.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct BuildingAccessCard: View {
    var status: BuildingAccessStatus
    let viewModel = BuildingAccessViewModel()
    
    var body: some View {
        HStack {
            RichText(viewModel.text(for: status))
                .font(.body)
                .foregroundColor(Colors.Text.primaryTextColor)
                .padding(.trailing)
            Image(systemName: "chevron.right")
                .foregroundColor(Colors.Card.chevron)
            
        }
        .padding()
    }
}

struct BuildingAccessCard_Previews: PreviewProvider {
    static var previews: some View {
        BuildingAccessCard(status: ModelData().buildingAccessStatus)
    }
}
