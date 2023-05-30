//
//  task1.swift
//  
//
//  Created by Trey Tuscai on 4/28/22.
//

import Foundation

//creating class instance with property name
class Person {
    let name: String
    init(name: String) {
        self.name = name
        //upon initialization the message below is printed
        print("\(name) is being initialized")
    }
    deinit {
        //upon deinitialization the message below is printed
        print("\(name) is being deinitialized")
    }
}

//creating reference to allocate and deallocate
var reference: Person?
reference = Person(name: "Trey")
reference = nil




