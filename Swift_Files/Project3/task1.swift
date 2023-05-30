//
//  task1.swift
//  
//
//  Created by Trey Tuscai on 2/28/22.
//

//import declaration
//allows access to symbols declared outside the file
import Foundation
//Identifiers are used to identify any user defined item
//They can start with a letter (A-za-z) or an underscore (_)
//They can be followed by 0 or more letters, underscores, or digits (0-9)
//Case sensitive
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
//A class declaration introduces a named class type into your program.
//following the class name with a : then another class is for superclasses
class Enemy: Player
{
    //Variable declarations are declared with the var keyword followed by the name
    var health: Int = 100
    //Type Annotation: following an identifier by a : and a type will specify the type
    //Swift is a type-safe language and encourages being explicit
    var ability: String = "Fire"
    //Type inference: Swift can infer the data type of vars
    var weapon = "Sword"
    //Constant declarations are declared using the let keyword
    //all the same rules apply
    let color = "Red"
    print(color)
}
//Scoping: if you’ve declared a variable in one “place” of your code, you cannot use it outside that place.
//Types of scope: global, local, function, closure, block, etc.
//global scope for class
class Map
{
    //making multiple declarations on one line is valid
    //class scope
    var x = 0, y = 0, z = 0
    //cannnot mix variable and constant declarations on one line
    //i.e. var w = 0, let shape: "Square"
    //Function declarations are declared using the func keyword
    func function(var x: Int) -> Int
    {
        //function scope
        var val = 5
        return x + y
    }
}
//A structure declaration introduces a named structure type into your program.
struct Structure
{
    //A type alias declaration introduces a named alias of an existing type into your program
    typealias structureDictionary<Value> = Dictionary<String, Value>
}
//An enumeration declaration introduces a named enumeration type into your program.
enum Number
{
    case a, b, c = 5, d
}
//there are many more types including agents, protocols, extension, etc.
//Sources: https://andybargh.com/variables-and-constants-in-swift/
//         https://docs.swift.org/swift-book/ReferenceManual/Declarations.html


