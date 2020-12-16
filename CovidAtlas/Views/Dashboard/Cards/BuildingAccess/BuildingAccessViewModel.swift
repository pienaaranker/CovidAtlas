//
//  BuildingAccessViewModel.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/16.
//

import Foundation

class BuildingAccessViewModel  {
    
    func text(for status: BuildingAccessStatus) -> String {
        switch status.status {
        case .granted:
            let dateComponents = status.expiryDate.split(separator: "T")
                guard let date = dateComponents.first,
                      let time = dateComponents.last else  {
                    return "Unable to parse date"
                }
            
            return "You are cleared for access to these building(s) until *\(time)* on *\(date)*"
        case .denied:
            return "You have not been given access to any buildings"
        case .pending:
            return "Your access to buildings is pending"
        }
    }
}
