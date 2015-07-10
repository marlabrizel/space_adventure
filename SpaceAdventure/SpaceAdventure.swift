
import Foundation

class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    
    init () {
        //goal: create a dictionary: 
        // let planetData = [
        //      "Mercury" : "A hot planet",
        //      "Venus" : "It's very cloudy"
        //  ]
        
        let mercury = Planet(name: "Mercury", description: "A hot planet")
        let venus = Planet(name: "Venus", description: "It's very cloudy")
        let earth = Planet(name: "Earth", description: "Home base")
        
        let planets = [ mercury, venus ]
        
        planetarySystem = PlanetarySystem(name: "Solar System", planets: planets)
    }
    
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