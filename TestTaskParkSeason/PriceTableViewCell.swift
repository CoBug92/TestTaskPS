//
//  PriceTableViewCell.swift
//  TestTaskParkSeason
//
//  Created by Bogdan Kostyuchenko on 09.03.17.
//  Copyright © 2017 Bogdan Kostyuchenko. All rights reserved.
//

import UIKit

class PriceTableViewCell: UITableViewCell {

    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var crownCountName: UILabel!
    @IBOutlet weak var crownCount: UILabel!
    @IBOutlet weak var secondPrice: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        self.button.layer.cornerRadius = 3
        self.button.layer.borderWidth = 1
        self.button.layer.borderColor = UIColor(red: 30.0/255.0, green: 140.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        self.button.layer.masksToBounds = true
    }

}
