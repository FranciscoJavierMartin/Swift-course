class Country {
    let name: String
    var capitalCity:City!
    
    init(name: String, capitalCity: String) {
        self.name = name
        self.capitalCity = City(name: capitalCity, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "England", capitalCity: "London")
print("\(country.name)'s capital is \(country.capitalCity.name)")
