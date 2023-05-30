//
//  task2.swift
//  
//
//  Created by Trey Tuscai on 4/28/22.
//

import Foundation
import CoreFoundation

//creating class instance with property name
class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    deinit {
    }
}

//allocate and deallocate te Person instance 1000000x
func test()
{
    var reference: Person?
    for i in 0 ... 1000000
    {
        reference = Person(name: "name")
        reference = nil
    }
}

//calculate the time it takes to allocate and deallocate
//every time the function is called
func fulltest()
{
    //10 iterations
    for i in 1 ... 10
    {
        //calc start and end time
        let start = CFAbsoluteTimeGetCurrent()
        test()
        let diff = CFAbsoluteTimeGetCurrent() - start
        print("\(diff) seconds")
    }
}

fulltest()




