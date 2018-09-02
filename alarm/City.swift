//
//  City.swift
//  alarm
//
//  Created by Chelsea Thiel-Jones on 2018-08-23.
//  Copyright © 2018 chelseatj3. All rights reserved.
//

import Foundation

class CitySingleton {
    static let sharedInstance = CitySingleton()
    private init() {} // Why add this line?
    var city = "City"
    var distance = 0
    func printVal() {
        print(city)
    }
    
}
