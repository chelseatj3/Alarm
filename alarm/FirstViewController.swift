//
//  FirstViewController.swift
//  alarm
//
//  Created by Chelsea Thiel-Jones on 2018-08-23.
//  Copyright © 2018 chelseatj3. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    
    let cities = ["Apsley", "Peterborough"]
    let cityInfo = CitySingleton.sharedInstance
    

    @IBOutlet weak var cityPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(cities[row])
        cityInfo.city = cities[row]
        cityInfo.printVal()
       
    }


}

