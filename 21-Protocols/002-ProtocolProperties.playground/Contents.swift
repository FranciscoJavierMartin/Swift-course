protocol SomeProtocol {
    var mustBeSettable: Int{
        get set
    }
    var doesnotNeedToBeSettable: Int {get}
    static var someTypeProperty: Int {get set}
}

protocol FullyNamed {
    var fullName: String {get}
}

struct Person: FullyNamed{
    var fullName: String
}

let jd = Person(fullName: "John Doe")

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String{
        return (prefix != nil ? prefix! : "") + name
    }
}

var firstStartship = Starship(name: "Enterprise", prefix: "USS")
print(firstStartship.fullName)

var secondStarship = Starship(name: "Millenium falcon")
print(secondStarship.fullName)
