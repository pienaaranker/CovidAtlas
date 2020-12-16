//
//  CButton.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import SwiftUI

struct CButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .background(Colors.Button.background)
            .foregroundColor(Colors.Button.textColor)
            .frame(height: 44)
    }
}
