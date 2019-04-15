//
//  ViewController.swift
//  HomeworksPavel
//
//  Created by Vitaliy Stepanenko on 7/16/18.
//  Copyright © 2018 Vitaliy Stepanenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    
    
    @IBOutlet weak var Picture1: UIImageView!
    @IBOutlet weak var Button3: UIButton!
    
    
    @IBOutlet weak var LabelCol: UILabel!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        Picture1.isHidden = true
        Button3.setTitle("Show", for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func battonTouc(_ sender: UIButton) {
    if sender === Button1 {
             Button1.isEnabled = false
             Button2.isEnabled = true
          }
          else if sender === Button2 {
             Button1.isEnabled = true
             Button2.isEnabled = false
          }
    }
  
    
    @IBAction func ButtonImage(_ sender: UIButton) {
          if Picture1.isHidden == true {
             Picture1.isHidden = false
             Button3.setTitle("Hide picture", for: .normal)
          }
          else {
             Picture1.isHidden = true
             Button3.setTitle("Show", for: .normal)
          }
     }

    @IBAction func Red(_ sender: UIButton) {
         switch sender {
            case Button4:
                 LabelCol.text = "Red"
            case Button5:
                 LabelCol.text = "Green"
            case Button6:
                 LabelCol.text = "Blue"
            default:
         break
         }
     }
}

