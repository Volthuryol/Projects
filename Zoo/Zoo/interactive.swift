//
//  interactive.swift
//  Zoo
//
//  Created by Caden Cheek on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

// class interactive prompts the user for input and controles the general flow



class Interactive {
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    private var animal = Animal()
    private var people = ZooPeople()
    
    func go() {
        
        
        while !done {
            
            io.writeMessage(" WELCOME TO OUR ZOO. Would you like to track our animals or our people?")
            currentInput = io.getInput()
            
            if currentInput.lowercased() == "q" {
                done = true
                print ( "Exiting.....")
            } else if currentInput.lowercased() == "animal"{
                io.writeMessage("Would you like to see the feeding schedule for the animals?")
                currentInput = io.getInput()
                if currentInput.lowercased() == "yes" {
                    print(animal.generalFeeding)
                } else {
                    return go()
                }
            } else if currentInput.lowercased() == "people" {
                io.writeMessage("Would you like to see where they are right now?")
                currentInput = io.getInput()
                if currentInput.lowercased() == "yes" {
                    print(people.locations())
                    return go()
                } else {
                    return go()
                }
            } else if currentInput.lowercased() == "help" {
                io.writeMessage("Hello, type animal to see our animals and follow the questions. \nType people to see what our people are up to.")
                return go()
            } else {
                print("Sorry I don't know what you typed try again")

            }
        }
    }
}
