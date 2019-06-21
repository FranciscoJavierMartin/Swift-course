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

for item in library{
    print(item)
}

// is -> type check operator
var movieCounter = 0
var songCounter = 0

for item in library{
    if item is Movie{
        movieCounter += 1
    } else if item is Song{
        songCounter += 1
    }
}

print("Contains \(movieCounter) movies and \(songCounter) songs")

// as? as! -> type cast operator

for item in library{
    if let movie = item as? Movie{
        print("Movie is \(movie.name) and the director is \(movie.director)")
    } else if let song = item as? Song{
        print("Song is \(song.name) and song by \(song.artist)")
    }
}
