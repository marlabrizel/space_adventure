//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Marla Brizel on 7/10/15.
//  Copyright (c) 2015 Your School. All rights reserved.
//

import Foundation

class SpaceAdventure {
    
    func start() {
        displayIntroduction()
        greetAdventurer()
        println("Let's go on an adventure!")
        determineDestination()
    }
    
    func responseToPrompt(prompt: String) -> String {
        println(prompt)
        return getln()
    }
    
    func displayIntroduction() {
        println("Welcome to the Solar System!")
        println("There are 8 planets to explore")
    }
    
    func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        println("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")

    }
    
    func determineDestination() {
        println("Let's go on an adventure!")
        let decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
        
        if decision == "Y" {
            // travel to a random planet
        } else if decision == "N" {
            println("Name the planet you would like to visit")
            let planetName = getln()
            println("Traveling to \(planetName)...")
            //print the planet description
        }

    }
}

//arrow denotes return type
// -> Void is implicit if no return type is specified