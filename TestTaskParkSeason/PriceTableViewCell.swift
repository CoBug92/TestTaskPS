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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
