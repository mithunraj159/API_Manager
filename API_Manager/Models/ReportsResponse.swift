//
//  ReportsResponse.swift
//  API_Manager
//
//  Created by Mithun Raj on 14/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Foundation

struct ReportsResponse: Decodable {
    let reports: [Report]
}

// MARK: - Report
struct Report: Decodable {
    let id, labourHours, totalCost: String
}

