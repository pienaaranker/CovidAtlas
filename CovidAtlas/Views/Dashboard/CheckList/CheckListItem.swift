//
//  CheckListItem.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct CheckListItem: View {
    var type: CheckListType
    var isComplete: Bool
    
    var body: some View {
        VStack {
            if isComplete {
                Image(type.imageName)
                    .renderingMode(.template)
                    .foregroundColor(Colors.Checkmark.imageColorComplete)
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Colors.Checkmark.background)
                    .cornerRadius(30)
                    .shadow(color: Colors.Checkmark.shadow, radius: 8)
                    .padding()
            } else {
                    Image(type.imageName)
                        .renderingMode(.template)
                        .foregroundColor(Colors.Checkmark.imageColorInComplete)
                        .frame(width: 60, height: 60, alignment: .center)
                        .padding()
            }
            
            Text(type.name)
                .lineLimit(2)
                .font(.subheadline)
                .foregroundColor(Colors.Text.primaryTextColor)
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
        }
        .background(Colors.secondaryGradient)
    }
}

struct CheckListItem_Previews: PreviewProvider {
    static var previews: some View {
        CheckListItem(type: .training, isComplete: true)
    }
}
