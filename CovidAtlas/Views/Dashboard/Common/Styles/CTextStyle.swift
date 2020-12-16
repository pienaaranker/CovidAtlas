//
//  CTextStyle.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import SwiftUI

struct CTextStyle: ViewModifier {
    
    func body(content: Content) -> some View {
            content
                .font(.body)
                .foregroundColor(Colors.Text.primaryTextColor)
        }
}
