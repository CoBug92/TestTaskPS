//
//  MainViewController.swift
//  TestTaskParkSeason
//
//  Created by Bogdan Kostyuchenko on 07.03.17.
//  Copyright © 2017 Bogdan Kostyuchenko. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func goToSecondVC(_ sender: UIButton) {
        
        let educationPopUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp") as! PopUpViewController
        self.addChildViewController(educationPopUpVC)
        educationPopUpVC.view.frame = self.view.frame
        self.view.addSubview(educationPopUpVC.view)
        educationPopUpVC.didMove(toParentViewController: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    


}

