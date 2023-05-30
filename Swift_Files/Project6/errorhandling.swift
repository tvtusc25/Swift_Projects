//
//  errorhandling.swift
//  
//
//  Created by Trey Tuscai on 4/14/22.
//

import Foundation

//from original project, verifiying file is readable
/*do
{
    var words = try String(contentsOfFile: filename).lowercased()
    words.removeAll(where : { punct.contains($0) })
    wordList = words.components(separatedBy: NSCharacterSet.whitespaces)
}
catch let error
{
    Swift.print("Fatal Error: \(error.localizedDescription)")
}*/


//file from URL are not nil
/*let contents: Data?
do {
    contents = try Data(contentsOf: someURL)
} catch {
    contents = nil
}*/


//floating point exception
enum fpe: Error
{
  case dividedByZero
}

//throw function
func divide(num: Int, deno: Int) throws
{
  // throuh divide by zero error
  if deno == 0
  {
    throw fpe.dividedByZero
  }
  else
  {
    let num = num / deno
    print(num)
  }
}

// call throwing function from do block
do
{
  try divide(num: 5, deno: 0)
  print("Success")
}

// catch error if function throws an error
catch fpe.dividedByZero
{
  print("Error: cannot divide by zero")
}




