//
//  EmployeeViewController.swift
//  API_Manager
//
//  Created by Mithun Raj on 15/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import UIKit

class EmployeeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var webServices = WebServices()
    var modelData = [EmployeeResponse]()

    override func viewDidLoad() {
        super.viewDidLoad()
        getEmployeeDetails()
    }
    
    func getEmployeeDetails() {
        webServices.getApiData(requestUrl: URL(string: Constants.employeeApiUrl)!, resultType: [EmployeeResponse].self) { (employeeResponse) in
            if employeeResponse.count > 0 {
                self.modelData = employeeResponse
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

}

extension EmployeeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell
        cell?.updateUIElementsForEmployees(modelData: modelData[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
}
