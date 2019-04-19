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
    
    
    var arrayName:[String] = []                  // Const Number of colors
    var colorConst : Int = 3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.tableFooterView = UIView()
        myTableView.keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag    // Hide keyboard
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
        
        let dateFormatter = DateFormatter()                       // Data Time
        dateFormatter.dateFormat = "YYYY-MM-dd hh:mm:ss"
        let dateString = dateFormatter.string(from: Date.init())
       
        cell.numberLabel.text = "section: \(indexPath.section+1)  row: \(indexPath.row+1)"
        cell.timeLabel.text = dateString
        cell.nameLabel.text = arrayName[indexPath.row]
        
          let colorVari = indexPath.row                            // Color analysis unit
                if (colorVari%colorConst)==0 {
                    cell.backgroundColor = UIColor.blue
                } else if (colorVari%colorConst)==1 {
                    cell.backgroundColor = UIColor.red
                } else if (colorVari%colorConst)==2 {
                    cell.backgroundColor = UIColor.green
                }
        return cell
    }
}
