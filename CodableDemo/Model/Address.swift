//
//  Address.swift
//  CodableDemo
//
//  Created by Mukul More on 11/03/18.
//  Copyright © 2018 mukulmore. All rights reserved.
//

import Foundation


struct Address : Codable {
    
    var flatNumber : Int
    var streetName : String
    var city : String
    var state : String
    var country : String
    
}
