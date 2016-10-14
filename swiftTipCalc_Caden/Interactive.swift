//
//  Interactive.swift
//  swiftTipCalc_Caden
//
//  Created by Caden Cheek on 10/10/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation


class Interactive {
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()

    
    func go() {
        
        
        
        // Ask for input the first time
        io.writeMessage("Welcome, to begin type t, to quit type q, and for help type h.")
        
        
        currentInput = io.getInput()
        var foodCost: Double = Double(currentInput) ?? 0.00
        var taxPct: Double = Double(currentInput) ?? 0.00
        var tip: Double = Double(currentInput) ?? 0.00
        var people: Double = Double(currentInput) ?? 0
        
        while !done {
            
            if currentInput == "q" {
                done = true
                
            } else if currentInput == "t" {
                
                //Ask user for input right here.
                io.writeMessage("\nWhat is the bill amount?")
                currentInput = io.getInput()
                foodCost = Double(currentInput) ?? 0.00
                
                io.writeMessage("\nWhat is the tax percent?")
                currentInput = io.getInput()
                taxPct = Double(currentInput)!
                
                io.writeMessage("\nHow much would you like to tip?")
                currentInput = io.getInput()
                tip = Double(currentInput) ?? 0.00
                
                io.writeMessage("\nHow many people are splitting the bill?")
                currentInput = io.getInput()
                people = Double(currentInput)!
                
                let taxPercent = taxPct * 0.1
                let tipAmount = tip * 0.01
                let billAmt = foodCost * taxPercent
                let tipTotal = (tipAmount * billAmt)
                let billAmount = ((((foodCost * taxPercent) + foodCost) * tipAmount) + foodCost)
                let splitBill = (billAmount / people)
                
                io.writeMessage("Your tip total is \(String(format: "%.02f",tipTotal))")
                io.writeMessage("Your bill is \(String(format: "%.02f",billAmount))")
                io.writeMessage("The amount per person is \(String(format: "%.02f", splitBill))")
                
                return go()
                
            } else if currentInput == "h"{
                io.writeMessage("The first question is how much was the food? you would type the total cost of the food so say $10. \nThe next question is asking the sales tax for instance in Kentucky it is 6%. \nNext you will be asked how much you would like to tip such as 10, 15, 20 percent is understood. \nLast but not least how would like like to split the bill will one be paying or more?")
                return go()
            }
        }
        print("Exiting....")
        
        return 
    }
}
