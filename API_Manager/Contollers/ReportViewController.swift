//
//  ReportViewController.swift
//  API_Manager
//
//  Created by Mithun Raj on 15/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var webServices = WebServices()
    var modelData: ReportsResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getReport()
    }
    
    func getReport() {
        webServices.getApiData(requestUrl: URL(string: Constants.reportsApi)!, resultType: ReportsResponse.self) { (reportResult) in
            if reportResult.reports.count > 0 {
                self.modelData = reportResult
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
        }
    }
    
}

extension ReportViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelData?.reports.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell
        cell?.updateUIElementsForReport(modelData: modelData!, index: indexPath.row)
        return cell ?? UITableViewCell()
    }
    
    
}
