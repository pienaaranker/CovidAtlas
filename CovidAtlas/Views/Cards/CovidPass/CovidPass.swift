//
//  CovidPass.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import SwiftUI

struct CovidPass: View {
    var status: CovidAccessStatus
    let viewModel = CovidPassViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(CovidPassViewModel.Strings.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Colors.Text.textColor)
                
                Text(viewModel.statusText(for: status))
                    .font(.footnote)
                    .fontWeight(.bold)
                    .padding([.leading, .trailing], 10)
                    .padding([.top, .bottom], 5)
                    .background(Colors.primary)
                    .foregroundColor(Colors.Text.textColor)
                    .cornerRadius(5)
                    
                    
            }
            .padding(.leading, 16)
            Spacer()
        }
        
    }
}

struct CovidPass_Previews: PreviewProvider {
    static var previews: some View {
        CovidPass(status: ModelData().covidAccessStatus)
    }
}
