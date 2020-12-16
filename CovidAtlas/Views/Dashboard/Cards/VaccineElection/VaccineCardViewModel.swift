//
//  VaccineCardViewModel.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import Foundation

class VacinneCardViewModel {
    
    struct Strings {
        static let electedText = "You have been elected to receive the COVID-19 vaccine"
        static let rejectedText = "Unfortunately you have not been selected to receive the COVID-19 vaccine"
        static let buttonText = "Get Vaccine"
    }
    
    func imageName(for electionStatus: VaccineElectionStatus) -> String {
        return (electionStatus.status == .elected) ? "shield_check" : ""
    }
    
    func text(for electionStatus: VaccineElectionStatus) -> String {
        return (electionStatus.status == .elected) ? VacinneCardViewModel.Strings.electedText : VacinneCardViewModel.Strings.rejectedText
    }
    
    func shouldShowButton(for electionStatus: VaccineElectionStatus) -> Bool {
        return electionStatus.status == .elected
    }
}
