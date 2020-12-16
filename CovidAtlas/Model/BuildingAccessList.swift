//
//  BuildingAccessList.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/14.
//

import Foundation

struct BuildingAccessList: Codable {
    var list: [Building] = []
    
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        
        while !container.isAtEnd {
            list.append(try container.decode(Building.self))
        }
    }
}

struct Building: Codable, Identifiable {
    var id: Int
    var name: String
    var expiryDate: String
}
