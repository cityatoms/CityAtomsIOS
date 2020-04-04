//
//  DataPoint.swift
//  CityAtoms
//
//  Created by Feras Alnatsheh on 4/3/20.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import Foundation

struct DataPoint: Codable {
    let time: String
    let timeUTC: Double
    let lat: Double
    let lon: Double
    let instanceID: String
    let symptoms: Symptoms
    
    enum CodingKeys: String, CodingKey {
        case timeUTC = "time_utc"
        case instanceID = "instance_id"
        case symptoms = "symptom_scores"
        case time
        case lat
        case lon
    }
}
