//
//  Colors.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/13.
//

import Foundation
import SwiftUI

struct Colors {
    static let primary = Color(red: 0/255, green: 168/255, blue: 65/255, opacity: 1.0)
    static let primaryGradient = Color(red: 21/255, green: 111/255, blue: 39/255, opacity: 1.0)
    static let secondary = Color(red: 24/255, green: 76/255, blue: 79/255, opacity: 1.0)
    static let secondaryGradient = Color(red: 20/255, green: 64/255, blue: 66/255, opacity: 1.0)
    
    struct Button {
        static let background = Color.white
        static let textColor = Color.black
    }
    
    struct Text {
        static let primaryTextColor = Color.white
    }
    
    struct Card {
        static let shadow = Color.black.opacity(0.5)
        static let chevron = Color.gray
    }
    
    struct Checkmark {
        static let imageColorComplete = Colors.secondaryGradient
        static let imageColorInComplete = Color.white
        static let background = Color.white
        static let shadow = Color.black.opacity(0.5)
    }
}
