//
//  EventModel.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/17.
//

import Foundation

struct EventModel: Codable, Identifiable {
    var id: Int
    var displayableDate: String
    var title: String
    var openTime: String
    var closeTime: String
    var waitTime: String
}
