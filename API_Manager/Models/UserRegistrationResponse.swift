//
//  UserRegistrationResponse.swift
//  API_Manager
//
//  Created by Mithun Raj on 15/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

// This is for getting response from post api
import Foundation

struct UserRegistrationResponse: Decodable {
    let errorMessage: String
    let data: UserData
}

struct UserData: Decodable {
    let name, email, id, joining: String
}
