//
//  FirstVCViewModel.swift
//  MVVM_Example
//
//  Created by apple on 15/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class FirstVCViewModel: NSObject {
    var employees: [String]?
    
    func getEmployeeNames() {
        // Hit the server and fetch data
        employees = ["One", "Two", "Three", "Four"]
    }
    
    func filter() {
        
    }
}
