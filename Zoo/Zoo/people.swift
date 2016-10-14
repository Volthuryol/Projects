//
//  people.swift
//  Zoo
//
//  Created by Caden Cheek on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

//parent class of the variety of people in a zoo


class ZooPeople {
    func locations() -> String {
        return "In the bathroom lol"
    }
    
    var list = ["Manager", "Ticketeer", "AnimalKeeper"]
    
}


class Manager: ZooPeople {
    //Things the manager tracks like
    override init() {
        super.init()
        func locations() {
            print("In the office running the place.")
            return
        }
    }
}

class Ticketeer:ZooPeople {
    //Ticketeers keep track of how many people showed up to the zoo per day or even per week
    override init(){
        super.init()
        func locations() {
            print("In the ticket booth keeping track of visitors and money. You probably talked to one of them as you came in.")
            return
        }
    }
    
}

class AnimalKeeper: ZooPeople {
    //The animal keeper needs to keep track of all the different feed times and overall cleanliness off the exhibits
    override init(){
        super.init()
        func locations() {
            print("All over the place. Takes care of the animals depending on what animals they are assigned to.")
            return 
        }
    }
}
