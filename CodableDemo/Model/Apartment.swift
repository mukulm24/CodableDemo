//
//  Apartment.swift
//  CodableDemo
//
//  Created by Mukul More on 11/03/18.
//  Copyright © 2018 mukulmore. All rights reserved.
//

import Foundation

struct Apartment : Codable {
    
    var buildingName : String
    var rent : Float
    var address : Address
    
    
    /**
     To convert a apartment object to JSON string.
     
     returns : JSON string for the respective apartment object
    */
    func convertToJSON() -> String?{
        
        let encoder = JSONEncoder()
        
        //If you wish to use the data instead of JSON string, you can go ahead and use encodedApt which is JSON encoded data.
        if let encodedApt = try? encoder.encode(self){
            
            if let jsonApt = String(data: encodedApt, encoding: .utf8) {
                print("JSON string : ")
                print(jsonApt)
            }

        }
        
        return nil
    }
    
    
}
