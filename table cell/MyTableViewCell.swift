//
//  MyTableViewCell.swift
//  table cell
//
//  Created by MacAir300 on 19.04.2019.
//  Copyright © 2019 MacAir300. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
