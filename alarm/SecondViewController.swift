//
//  SecondViewController.swift
//  alarm
//
//  Created by Chelsea Thiel-Jones on 2018-08-23.
//  Copyright © 2018 chelseatj3. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    


    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CitySingleton.sharedInstance.printVal()
        
        cityLabel.text = CitySingleton.sharedInstance.city
        
    }
    override func viewWillAppear(_ animated: Bool) {
        if (cityLabel.text != CitySingleton.sharedInstance.city) {
            cityLabel.text = CitySingleton.sharedInstance.city
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

