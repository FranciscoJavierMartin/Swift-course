class Person {
    let name: String
    var apartament: Apartament?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) has been deinitialized")
    }
    
}

class Apartament {
    let unit: String
    var tenant: Person?
    
    init(unit: String) {
        self.unit = unit
    }
    
    deinit {
        print("Apartament \(unit) has been deinitialized")
    }
    
}

var johnDoe: Person?
var apartament: Apartament?

johnDoe = Person(name: "John Doe")
apartament = Apartament(unit: "4A")

johnDoe!.apartament = apartament
apartament!.tenant = johnDoe
