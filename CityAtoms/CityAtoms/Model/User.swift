//
//  User.swift
//  CityAtoms
//
//  Created by Feras Alnatsheh on 4/3/20.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import Foundation

typealias InstanceID = String

struct User: Codable {
    let instanceID: InstanceID
    let timeZone: String
    
    enum CodingKeys: String, CodingKey {
        case instanceID = "instance_id"
        case timeZone = "time_zone"
    }
}
