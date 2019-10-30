//
//  ViewController.swift
//  villes-temperature
//
//  Created by Christophe Ondrejec on 03/10/2019.
//  Copyright © 2019 Christophe Ondrejec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let Cities: [String] = [
        "London",
        "Frankfurt",
        "Canberra"
    ]
	
    @IBAction func showDetails(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(identifier: "second") as? SecondViewController
        
        next?.cityName = Cities[sender.tag]
        
        if next != nil {
            show(next!, sender: self)
        }
        
        
    }
}
