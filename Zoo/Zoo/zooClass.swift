//
//  zooClass.swift
//  Zoo
//
//  Created by Caden Cheek on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

// set up a dictionary to catalog all animals, people, visitors
class Zoo {
    let animal = Animal()
    let people = ZooPeople()
    let visitors = Visitors()
    let mammal = Mammal()
    let reptile = Reptile()
    let bird = Bird()
    let manager = Manager()
    let ticketeer = Ticketeer()
    let animalKeeper = AnimalKeeper()
    
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
   private var interactive = Interactive()
    
    func goAnimal(){
        io.writeMessage("Hello, would you like to see what animals we have? (Type help to see how to navigate.)")
        currentInput = io.getInput()
        if currentInput.lowercased() == "list" {
    print(animal.listAnimals)
            return goAnimal()
    } else if currentInput.lowercased() == "mammal" {
        print(animal.generalFeeding)
        return goAnimal()
    } else if currentInput.lowercased() == "reptile" {
        print(reptile.generalFeeding)
            return goAnimal()
    } else if currentInput.lowercased() == "birds" {
        print(bird.generalFeeding)
            return goAnimal()
        } else if currentInput.lowercased() == "help" {
            io.writeMessage("To see a list of the animals type list. \nTo navigate to Mammals type mammal. \nTo navigate to Reptiles type reptile. \nTo navigate to the Aviary type birds. \nTo quit just type quit.")
            return goAnimal()
        }else {
            return interactive.go()
        }


        }
    
    func goEmployee() {
        io.writeMessage("Hello, would you like to know where some of our employees are at this time? (Type help to see how to navigate.)")
        currentInput = io.getInput()
        if currentInput.lowercased() == "help" {
            io.writeMessage("To see who we have on staff right now type list. \nTo see where they are type their name to go specifically to that type of employee. \nOnce on the employee follow the questions to find out what you can learn.")
            return goEmployee()
        } else if currentInput.lowercased() == "list" {
            print(people.list)
            return goEmployee()
        } else if currentInput.lowercased() == "manager" {
            print(manager.locations())
            return goEmployee()
        } else if currentInput.lowercased() == "ticketeer" {
            print(ticketeer.locations())
            return goEmployee()
        } else if currentInput.lowercased() == "animalkeeper" {
            print(animalKeeper.locations())
            return goEmployee()
        } else {
            return interactive.go()
        }
    }
    }





