//
//  task1.swift
//  
//
//  Created by Trey Tuscai on 3/10/22.
//

import Foundation

func checkOddEven()
{
    var num = 1
    //basic while loop
    //iterates while num is less than 30
    while (num < 30)
    {
        //basic if-else statement
        //tests if num is even, odd, or zero
        if(num % 2 == 0)
        {
            print("even)
        }
        else if(num % 2 == 1)
        {
            print("odd")
        }
        else
        {
            print("zero")
        }
        print("Num is \(num)")
        num++
    }
}
                  
func checkPos()
{
    var num = 20
    //basic guard statement
    //C does not have guard statements
    //check if num is pos or neg
    //num is positive so the code inside is executed
    guard (number > 0) else
    {
        print("Positive")
        return
    }
    print("Negative")
}

func checkWeather()
{
    let weather = "sunny"
    //basic switch statement
    //more powerful than C's equivalent
    //checks each case and prints the message accoridngly
    //with break and continue statements
    switch weather
    {
        case "clouds":
            print("Bring a coat")
            //breaks out of loop
            break;
        case "snow":
            print("Dress very warm")
            break;
        case "sunny":
            print("It's a nice day")
            //continues on to default case
            continue;
        default:
            print("Enjoy the weather")
    }
}

func checkLang()
{
    let languages = ["Swift", "Java", "Go", "JavaScript"]
    //basic for-in loop
    //C does not have for-in loops
    //for loop that has access to sequences
    //checks inside languages for each item
    for language in languages
    {
        print(language)
    }
}

func displayNum()
{
    var i = 1, n =  5
    //basic repeat while loop
    //C uses do while loops which are very similar
    //passes through the code block before considering conditional
    repeat
    {
        print(i)
        i++
    }
    while(i < n)
}


