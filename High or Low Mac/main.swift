//
//  main.swift
//  High or Low Mac
//
//  Created by Glenn Hancock on 11/8/15.
//  Copyright © 2015 Glenn Hancock. All rights reserved.
//

import Foundation

let answer = randomIntBetween(1, high: 100)
var turn = 1

while(true) {
    print("Guess #\(turn): Enter a number between 1 and 100.")
    
    let userInput = input()
    let inputAsInt = Int(userInput)
    
    if let guess = inputAsInt {
        if(guess > answer) {
            print("Lower!")
        } else if(guess < answer) {
            print("Higher!")
        } else {
            print("Correct! The answer was \(answer).")
            break
        }
    }  else  {
        print("Please enter a valid number.")
       continue
    }
    turn++
}
print("It took you \(turn) guesses.")
