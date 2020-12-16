//
//  VaccineElectionStatus.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import Foundation

struct VaccineElectionStatus: Codable {
    
    enum Status: String, Codable {
        case elected = "elected"
        case rejected = "rejected"
    }
    
    var status: Status
}
