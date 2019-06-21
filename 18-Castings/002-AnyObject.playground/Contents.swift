// Any -> represents an instance of any data type, inluding functions
// AnyObject -> represents an instance of any class

class MediaType{
    var name: String
    init(name: String){
        self.name = name
    }
}

class Movie: MediaType{
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaType {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Avatar", director: "James Cameron"),
    Song(name: "Bohemian Rapsody", artist: "Queen"),
    Movie(name: "Django unchained", director: "Tarantino"),
    Song(name: "Let it go", artist: "Demi Lovato")
]

var things = [Any]()

things.append(0)
things.append(0.0)
things.append("Hello")
things.append((1,2))
things.append(Movie(name: "Avatar", director: "James Cameron"))
things.append(Song(name: "Bohemian Rapsody", artist: "Queen"))
things.append({(name: String) -> String in "Hello \(name)"})

for thing in things {
    switch thing {
    case 0 as Int:
        print("It is a integer zero")
    case 0 as Double:
        print("It is a double")
    case let someInt as Int:
        print("Printed int: \(someInt)")
    default:
        print("Default case")
    }
}
