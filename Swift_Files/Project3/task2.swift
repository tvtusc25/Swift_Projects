//
//  task2.swift
//  
//
//  Created by Trey Tuscai on 3/1/22.
//
//import declaration
import Foundation

//iterative implementation of Swift Binary Search
//function with a comparable, generic type that takes in a generic array and generic key
//nullable return type (Can return an Int or null)
func binarySearch<T: Comparable>(a: [T], key: [T])->Int?
{
    //variables using type inference
    var lowBound = 0
    //highBound is equal to the array length
    var highBound = a.count
    //while loop
    while lowBound < upperBound
    {
        //constant that holds the middle position of the high and low bounds
        let mid = lowBound + (highBound - lowBound) / 2
        //if statement
        //if middle item in the array is equal to the key
        if a[mid] == key
        {
            //return the middle position
            return mid
        }
        //else if statement
        //if middle item in the array is less than the key
        else if a[mid] < key
        {
            //set low bound to one more than the middle position
            lowBound = mid +1
        }
        //else statement
        //high bound is equal to middle position
        else
        {
            highBound = mid
        }
    }
    //if int is not returned return null
    return nil
}
