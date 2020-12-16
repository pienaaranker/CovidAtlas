//
//  CheckListType.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import Foundation

enum CheckListType {
    case acknowledgeForm
    case training
    case medical
    case attest
    
    var name: String {
        switch self {
        case .acknowledgeForm: return "Acknowledge Form"
        case .training: return "Training"
        case .medical: return "Medical"
        case .attest: return "Attest"
        }
    }
    
    var imageName: String {        
        switch self {
        case .acknowledgeForm: return "check-mark"
        case .training: return "check-mark"
        case .medical: return "microscope"
        case .attest: return "check-mark"
        }
    }
}
