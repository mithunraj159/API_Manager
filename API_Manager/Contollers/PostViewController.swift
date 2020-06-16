//
//  PostViewController.swift
//  API_Manager
//
//  Created by Mithun Raj on 15/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var webServices = WebServices()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerUser()

    }
    
    func registerUser()
    {
        //code to register user
        let registrationUrl = URL(string: Constants.registerUser)
        
        let request = UserRegistrationRequest(FirstName: "codecat", LastName: "15", Email: "codecat15@gmail.com", Password: "1234")
        
        do {
            
            let encodedRequest = try JSONEncoder().encode(request)
            
            webServices.postApiData(requestUrl: registrationUrl!, requestBody: encodedRequest, resultType: UserRegistrationResponse.self) { (userRegistrationResponse) in
                
                if(userRegistrationResponse.errorMessage.isEmpty)
                {
                    print(userRegistrationResponse.data)
                    DispatchQueue.main.async {
                        self.nameLabel.text = userRegistrationResponse.data.name
                        self.emailLabel.text = userRegistrationResponse.data.email
                    }
                }
            }
            
        } catch let error {
            
            print("error = \(error.localizedDescription)")
        }
        
    }
    
}
