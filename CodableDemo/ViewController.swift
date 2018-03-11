//
//  ViewController.swift
//  CodableDemo
//
//  Created by Mukul More on 11/03/18.
//  Copyright © 2018 mukulmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.encodingSample()
        
        let aptJSONString = self.getAptJSON()
        self.decodingJSONToApartment(aptJSON: aptJSONString)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: Encoding examples
    func encodingSample(){
        print("ENCODING DATA")
        let sampleApt = self.createAppartmentToRent()
        let jsonAptDetails = sampleApt.convertToJSON()
    }
    
    func createAppartmentToRent() -> Apartment{
        let oxfordAptAddress = Address(flatNumber: 24, streetName: "Elphinston Road", city: "Pune", state: "Maharashtra", country: "India")
        let oxfordApt = Apartment(buildingName: "Oxford", rent: 18500.0, address: oxfordAptAddress)
        return oxfordApt
    }

    
    //MARK: Decoding examples
    /**
     Converts a JSON String to it's corresponding object
     params : aptJSON -> The JSON string which needs to be decoded
     returns: Apartment object keeping JSON string as Datasource
     */
    func decodingJSONToApartment(aptJSON : String) -> Apartment?{
        
        print("\n\nDECODING DATA")
        if let aptJsonData = aptJSON.data(using: .utf8) {
            
            let decoder = JSONDecoder()
            if let oxfordApt = try? decoder.decode(Apartment.self, from: aptJsonData) {
                print(oxfordApt)
                return oxfordApt
            }

        }
        return nil
    }
    
    func getAptJSON() -> String {
          let bravuriaAptJSON = "{\"address\":{\"state\":\"UP\",\"flatNumber\":24,\"city\":\"Kanpur\",\"streetName\":\"MH Area\",\"country\":\"India\"},\"buildingName\":\"Bravuria\",\"rent\":18500}"
          return bravuriaAptJSON
    }
    
}

