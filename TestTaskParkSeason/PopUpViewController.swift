//
//  PopUpViewController.swift
//  TestTaskParkSeason
//
//  Created by Bogdan Kostyuchenko on 07.03.17.
//  Copyright © 2017 Bogdan Kostyuchenko. All rights reserved.
//

import UIKit
import SpriteKit

class PopUpViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    let priceArray = priceTable(contents: priceTableCell(crownCountName: "1 Корона", crownCount: "1", price: "159 ₽/шт", secondPrice: "147 ₽"),
                                priceTableCell(crownCountName: "3 Короны", crownCount: "3", price: "129 ₽/шт", secondPrice: "390 ₽"),
                                priceTableCell(crownCountName: "5 Корон", crownCount: "5", price: "99 ₽/шт", secondPrice: "475 ₽"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimation()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)

        self.view1.layer.cornerRadius = 4
        self.view1.layer.masksToBounds = true
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 85.0
    }
    
    
    @IBAction func closeAction(_ sender: UIButton) {
        removeAnimation()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return priceArray.content.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PriceTableViewCell
        
        cell.crownCount.text = priceArray.content[indexPath.row].crownCount
        cell.price.text = priceArray.content[indexPath.row].price
        cell.secondPrice.text = priceArray.content[indexPath.row].secondPrice
        cell.crownCountName.text = priceArray.content[indexPath.row].crownCountName
        
        if indexPath.row == (priceArray.content.count-1) {
            cell.bestPriceView.isHidden = false
            cell.clonePrice.text = priceArray.content[indexPath.row].price
            
            // Configure the view for the selected state
            cell.bestPriceView.layer.cornerRadius = 20
            cell.bestPriceView.layer.masksToBounds = true
            cell.price.isHidden = true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    
    //MARK: - Animation FUNC
    
    func showAnimation() {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 1.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removeAnimation() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view1.alpha = 0.0
            self.view.transform = CGAffineTransform(scaleX: 1.7, y: 1.7)
        }, completion:{(finished : Bool) in
            if (finished) {
                self.navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 1, green: 1, blue: 1, alpha: 1)
                self.view.removeFromSuperview()
            }
        })
    }
}



class priceTableCell: NSObject {
    var crownCount: String
    var crownCountName: String
    var price: String
    var secondPrice: String
    
    init(crownCountName: String, crownCount: String, price: String, secondPrice: String) {
        self.crownCountName = crownCountName
        self.crownCount = crownCount
        self.price = price
        self.secondPrice = secondPrice
    }
}

class priceTable: NSObject {
    
    var content : [priceTableCell]
    
    init(contents: priceTableCell...){
        self.content = contents
    }
}
