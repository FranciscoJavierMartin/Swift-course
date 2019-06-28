protocol Named {
    var name: String {get}
}

protocol Aged {
    var age: Int {get}
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(to celebrator:Named & Aged) {
    print("Happy birthday \(celebrator.name), now you are \(celebrator.age) years old")
}

wishHappyBirthday(to: Person(name: "John", age: 30))

class Location {
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

class City: Location, Named {
    var name: String
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        super.init(latitude: latitude, longitude: longitude)
    }
}

func beginTravel(to location: Location & Named) {
    print("Wellcome to \(location.name)")
}

let seattle = City(name: "Seattle", latitude: 47.6, longitude: -122.3)
beginTravel(to: seattle)

