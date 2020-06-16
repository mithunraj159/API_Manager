//
//  UserRegistrationRequest.swift
//  API_Manager
//
//  Created by Mithun Raj on 15/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Foundation

struct UserRegistrationRequest : Encodable
{
    let FirstName, LastName, Email, Password : String

    enum CodingKeys: String, CodingKey {
        case FirstName = "First_Name"
        case LastName = "Last_Name"
        case Email, Password
    }
}
