//
//  ViewController.swift
//  MVVM_Example
//
//  Created by apple on 15/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit
// View  Logic
class ViewController: UIViewController {
    var viewModel: FirstVCViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = FirstVCViewModel()
        viewModel?.getEmployeeNames()
        viewModel?.filter()
        
        // Do any additional setup after loading the view, typically from a nib.
    }    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.employees?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = viewModel?.employees?[indexPath.row] ?? "Temp"
        return cell ?? UITableViewCell()
    }
    
}
