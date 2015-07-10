import Foundation

class PlanetarySystem {
    
    let name: String
    let planets: [Planet]
    
    init (name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
}