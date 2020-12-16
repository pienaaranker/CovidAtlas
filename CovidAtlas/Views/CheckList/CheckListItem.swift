//
//  CheckListItem.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import SwiftUI

struct CheckListItem: View {
    var title: String
    var isComplete: Bool
    
    var body: some View {
        VStack {
            if isComplete {
                Text("✓")
                    .font(.system(size: 36))
                    .bold()
                    .foregroundColor(Colors.secondaryGradient)
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Colors.Checkmark.background)
                    .cornerRadius(30)
                    .padding()
            } else {
                
            }
            
            Text(title)
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
        CheckListItem(title: "Medical", isComplete: true)
    }
}
