//
//  animals.swift
//  Zoo
//
//  Created by Caden Cheek on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
//class to track overall condition of all animals in the park


class Animal {
    // tracking animal health, age and statistics such as weight,height vet records
    var listAnimals = [String]()
    var generalFeeding = [String]()
    
    init() {
        self.generalFeeding.append("TIME")
    }
    

    
    
    //func feedingSchedule(schedule: String) -> [String] {
      //  if schedule == "Yes" {
        //    return generalFeeding
        //} else {
          //  return ["Ah, I will still show you. \(generalFeeding)"]
        //}
    //}
    
    
}


class Mammal:Animal{
    //this will detail the species and discription of all animals of the mammal family
    // would need a function to track last feeding and next feeding
    
}

class Reptile:Animal{
    //this would detail the species and discription of all reptiles in the park
    //need func to track feeding schdule and hibernation schdule
    override init(){
        super.init()
        generalFeeding = ["7:00am", "11:00am", "3:00pm", "7:00pm"]
    }
}

class Bird:Animal{
    //would detail the species and discription of all birds in the park
    //need func to track feeding schdule and breeding schdule
    override init(){
        super.init()
        generalFeeding = ["9:00am", "1:00pm", "5:00pm", "8:00pm", "10:00pm"]
    }
}
