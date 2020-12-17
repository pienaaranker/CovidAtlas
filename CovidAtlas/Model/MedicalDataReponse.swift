//
//  MedicalDataReponse.swift
//  CovidAtlas
//
//  Created by Pienaar Anker on 2020/12/17.
//

import Foundation

struct MedicalDataReponse: Codable {
    var startDate: String
    var endDate: String
    var name: String
    var events: [EventModel]
}
