//
//  Cell.swift
//  API_Manager
//
//  Created by Mithun Raj on 15/06/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameCostLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUIElementsForEmployees(modelData: EmployeeResponse) {
        let idConvertedToInt = String(modelData.employeeId)
        idLabel.text = idConvertedToInt
        nameCostLabel.text = modelData.name
    }
    
    func updateUIElementsForReport(modelData: ReportsResponse, index: Int) {
        idLabel.text = modelData.reports[index].id
        nameCostLabel.text = modelData.reports[index].totalCost
    }


}
