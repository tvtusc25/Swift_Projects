//
//  task3.swift
//  
//
//  Created by Trey Tuscai on 3/1/22.
//

import Foundation
    //type operations
    var a: Int = 5
    var b: String = "6"
    var c: Float = 7.0
    var d: Double = 8.0
    
    //cannot +,-,*,/,% differing types
    //var e = b + a
    //var f = c * a
    //print(type(of: f))
    //print(type(of: e))
    //returns error: type is ambiguous

    //+,-,*,/,% similar types is valid
    var e: Int = 6
    var f: String = "6"
    var g: Float = 7.0
    var h: Double = 8.0
    print(a*e)
    //30
    print(b+f)
    //only addition for strings
    //concatenation: 66
    print(c-g)
    //0.0
    print(d/h)
    //1.0
    print(e%a)
    //a

    //if else statement to show boolean
    //false
    var i: Bool = true
    if(a == e)
    {
        print(i)
    }
    else
    {
        i = false
        print(i)
    }
//class example
class Player
{
    local var name: String
    //camelcase is the naming convention
    var highScore: Int = 0
    var pastScores: [Int] = []
    //To use a reserved word, the identifier must be followed by a backtick (')
    var class'
    //variable names cannot have whitespace, mathematical symbols (such as the plus (+) or minus (-) operators) or special characters
    //var a+b will not compile
}
//struct example
struct Structure
{
    //A type alias declaration introduces a named alias of an existing type into your program
    typealias structureDictionary<Value> = Dictionary<String, Value>
}
//enum example
enum Number
{
    case a, b, c = 5, d
}
//* not shown agents, protocol, extensions
    
