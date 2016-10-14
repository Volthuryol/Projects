//
//  interactive.swift
//  Library
//
//  Created by Caden Cheek on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Interactive{
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    private var library = Library()
    
    func go(){
        //Ask for input
        io.writeMessage("Welcome to the library what would you like to do? Would you like to: checkout type checkout, list what books we have type list, return a book type return, donating a book type donate, or you made a wrong turn and wish to leave type q?")
        
        currentInput = io.getInput()
        
        while !done {
            if currentInput == "checkout"{
                io.writeMessage("Type a number from starting at 0 depending on which book you would like to checkout.")
                currentInput = io.getInput()
                print("You have checked out: \(library.libraryIndex.remove(at: Int(currentInput)!))")
                return go()

            } else if currentInput == "list" {
                print(library.libraryIndex)
                return go()
            } else if currentInput == "return" {
                io.writeMessage("What book are you returning?")
                currentInput = io.getInput()
                library.returningBookKey(title: currentInput)
                print(library.libraryIndex)
                return go()

            } else if currentInput == "donate" {
                io.writeMessage("Thank you for donating a book today. What would you like to donate?")
                currentInput = io.getInput()
                library.returningBookKey(title: currentInput)
                print(library.libraryIndex)
                return go()
            } else if currentInput == "help" {
                io.writeMessage("If you didn't read the menu to navigate type checkout for checkout, type list to list the books we have, type return to return a book, and type donate to donate a book (which we appreciate), and lastly type q to leave.")
                return go()
            } else if currentInput == "q" {
                 return print("leaving...")
            } else {
                return go()
            }
                
        }
        
    }
}


/*
switch currentInput {
case "checkout":
    io.writeMessage("Type a number from starting at 0 depending on which book you would like to checkout.")
    currentInput = io.getInput()
    print("You have checked out: \(library.libraryIndex.remove(at: Int(currentInput)!))")
    return go()
case "list":
    library.getIndex()
    return go()
case "return":
    io.writeMessage("What book are you returning?")
    currentInput = io.getInput()
    library.returningBookKey(title: currentInput)
    print(library.libraryIndex)
    return go()
case "donate":
    io.writeMessage("Thank you for donating a book today. What would you like to donate?")
    currentInput = io.getInput()
    library.returningBookKey(title: currentInput)
    return go()
case "help":
    io.writeMessage("If you didn't read the menu to navigate type checkout for checkout, type list to list the books we have, type return to return a book, and type donate to donate a book (which we appreciate), and lastly type q to leave.")
    return go()
case "q":
    return print("leaving...")
default:
    return go()
}
/**/*/
