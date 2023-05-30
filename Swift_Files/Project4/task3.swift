//
//  task3.swift
//  
//
//  Created by Trey Tuscai on 3/10/22.
//

import Foundation

//takes in generic array and generic function
//function compares two objects and returns true if the first comes before the second
//returns generic array
func insertionSort<T>(_ array: [T], _ isOrdered: (T, T) -> Bool) -> [T]
{
  var arr = array
  //starts at first item in array
  //from x's position up is unsorted
  for x in 1..<arr.count
    {
      var y = x
      //makes array copy
      let temp = arr[y]
      //while item position is greater than 0
      //and isOrdered is true
      while y > 0 && isOrdered(temp, arr[y - 1])
      {
          //switches to correct positioning
          arr[y] = arr[y - 1]
          y-=1
      }
    arr[y] = temp
  }
  return arr
}

let strings = ["f", "e", "a", "g", "b"]
var nums = [7, 3, 2, 6, 5]
//< and > denote the order
print(insertionSort(strings, <))
print(insertionSort(strings, >))
print(insertionSort(nums, <))
print(insertionSort(nums, >))




