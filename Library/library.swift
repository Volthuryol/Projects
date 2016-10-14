//
//  library.swift
//  Library
//
//  Created by Caden Cheek on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Library {
    var libraryIndex: [String] = ["Harry Potter and The Sorcerer's Stone",
                                      "Harry Potter and The Chamber of Secrets",
                                      "Harry Potter and The Prisoner of Azkaban"]
    
    

    func returningBookKey(title: String) -> [String]{
        libraryIndex.append(title)
        return libraryIndex
    }
    func getIndex() -> [String] {
        return(libraryIndex)
    }
    
}
