//
//  task2.swift
//  
//
//  Created by Trey Tuscai on 3/10/22.
//

import Foundation

//function must be named
//function has type "()"
func sub(a: Int, b: Int, test: ()) -> Int
{
    return a - b
}

//test function
//check if function can be passed to naother function
func test()
{
}

//declare variable
//can pass function to another function
var subFunc: (Int, Int, ()) -> Int

//assign function to variable
subFunc = sub

//call function using variable
let result = subFunc(5, 4, test())
print("Result is \(result)")



