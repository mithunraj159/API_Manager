//
//  EmployeeResponse.swift
//  API_Manager
//
//  Created by Mithun Raj on 14/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Foundation

struct EmployeeResponse : Decodable {
    let employeeId, depid: Int
    let salary: Double
    let name, role, joining, workPhone: String

    enum CodingKeys: String, CodingKey {
        case depid = "dep_id"
        case joining = "joining_date"
        case employeeId = "id"
        case salary
        case name, role, workPhone
    }
}

