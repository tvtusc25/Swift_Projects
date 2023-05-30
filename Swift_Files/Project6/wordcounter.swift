//
//  wordcounter.swift
//  
//
//  Created by Trey Tuscai on 4/13/22.
//

import Foundation

func createWordList() -> Dictionary<String, Int> {
    //variables and constants
    let filename = "/Users/treytuscai/Desktop/Project6/wctest.txt"
    let punct: Set<Character> = [".", ","]
    var wordList: [String]?
    //read file, remove punctuation, make lowercase
    //add each word to dictionary
    do
    {
        var words = try String(contentsOfFile: filename).lowercased()
        words.removeAll(where : { punct.contains($0) })
        wordList = words.components(separatedBy: NSCharacterSet.whitespaces)
    }
    catch let error
    {
        Swift.print("Fatal Error: \(error.localizedDescription)")
    }
    //remove "\n"
    wordList!.removeLast()
    
    //add counts to dictionary
    var dict = Dictionary<String, Int>()
    for word in wordList!
    {
        if let count = dict[word]
        {
            dict[word] = count + 1
        }
        else
        {
            dict[word] = 1
        }
    }
    return dict
}

//sort dictionary by value
var wordList = createWordList().sorted { (first, second) -> Bool in
    return first.value > second.value
}
//print each element of dictionary
for words in wordList
{
    print(words.key, ": ", words.value)
}

