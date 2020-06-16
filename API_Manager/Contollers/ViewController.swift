//
//  ViewController.swift
//  API_Manager
//
//  Created by Mithun Raj on 14/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var employeeGetApiButton: UIButton!
    @IBOutlet weak var reportGetApiButton: UIButton!
    @IBOutlet weak var postApiButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func employeeGetApiButtonClicked(_ sender: UIButton) {
        if let employeeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EmployeeViewController") as? EmployeeViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(employeeVC, animated: true)
            }
        }
    }
    
    @IBAction func reportGetApiButtonClicked(_ sender: UIButton) {
        if let reportVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ReportViewController") as? ReportViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(reportVC, animated: true)
            }
        }
    }
    
    @IBAction func postApiButtonClicked(_ sender: UIButton) {
        if let postVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PostViewController") as? PostViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(postVC, animated: true)
            }
        }
    }
    
}

