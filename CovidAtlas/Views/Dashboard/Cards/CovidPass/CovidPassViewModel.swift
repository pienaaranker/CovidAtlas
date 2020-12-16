//
//  CovidPassViewModel.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import Foundation

class CovidPassViewModel {
    struct Strings {
        static let title = "COVIDPass"
        static let accessGranted = "Access Granted"
        static let accessDenied = "Access Denied"
    }
    
    func statusText(for accessStatus: CovidAccessStatus) -> String {
        return accessStatus.status == .granted ?
            CovidPassViewModel.Strings.accessGranted :
            CovidPassViewModel.Strings.accessDenied
    }
}
