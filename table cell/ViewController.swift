//
//  ViewController.swift
//  table cell
//
//  Created by MacAir300 on 06.01.2019.
//  Copyright © 2019 MacAir300. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController,
    UITableViewDelegate,
    UITableViewDataSource {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myLabelGo: UILabel!
    
    var arrayName:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.tableFooterView = UIView()
        myTableView.keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag   // hide keyboard
        
    }

    @IBAction func addButtonText(_ sender: AnyObject) {
        myLabelGo.text = "Hello " + myTextField.text!
        arrayName.append(myTextField.text!)
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = arrayName[indexPath.row]
        return cell
    }
}
