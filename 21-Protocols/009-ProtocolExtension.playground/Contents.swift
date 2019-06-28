protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 29.0
    let m = 123456.0
    let a = 4321.0
    let c = 43643.0
    
    func random() -> Double {
        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
        return lastRandom / m
    }

}

extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() < 0.5
    }
}

let generator = LinearCongruentialGenerator()
print("Random number is \(generator.random())")
print("Random bool is \(generator.randomBool())")

protocol TextRepresentable {
    var textRepresentation: String { get }
}

protocol PrettyTextRepresentable : TextRepresentable {
    var prettyTextualDescription : String { get }
}

extension PrettyTextRepresentable {
    var prettyTextualDescription: String{
        return textRepresentation
    }
}

extension Collection where Iterator.Element : TextRepresentable {
    var textualDescription : String {
        let itemAsText = self.map {
            $0.textRepresentation
        }
        
        return "["+itemAsText.joined(separator: ", ")+"]"
    }
}

class Animal: TextRepresentable {
    var textRepresentation: String
    
    init(name: String) {
        self.textRepresentation = name
    }
}

let animals = [
    Animal(name: "Lion"),
    Animal(name: "Cat"),
    Animal(name: "Dog")
]

print(animals.textualDescription)
