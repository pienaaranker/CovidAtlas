//
//  CovidAccessStatus.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import Foundation

struct CovidAccessStatus: Hashable, Codable {
    
    enum Status: String, Codable {
        case granted = "granted"
        case denied = "denied"
        case pending = "pending"
    }
    
    var status: Status
}


