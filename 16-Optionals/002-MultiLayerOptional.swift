class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()

    var numberOfRooms: Int {
        return rooms.count
    }

    
    subscript(i: Int) -> Room {
        get{
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }

    func printNumberOfRooms(){
        print("Number of residence's rooms is \(numberOfRooms)")
    }

    var address: Address?
    
}

class Room{
    let name: String

    init(name: String) {
        self.name = name
    }
    
}

class Address{
    var street: String?
    var buildingName: String?
    var buildingNumber: String?

    func buildingIdentifier() -> String? {
        if let buildingName = self.buildingName,
            let street = self.street = {
            return "\(street), nº\(buildingNumber)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's home has \(roomCount) rooms")
} else {
    print("Unknown")
}

let someAddress = Address()
someAddress.buildingName = "123"
someAddress.street = "Fake street"
john.residence?.address = someAddress

func createAdress() -> Address {
    print("Create address has been called")

    let someAddress = Address()
    someAddress.buildingNumber = "123"
    someAddress.street = "Fake street"

    return someAddress
}

john.residence?.address = createAdress()

// Methods
if john.residence?.printNumberOfRooms() != nil {
    print("Number of rooms has been printed")
} else {
    print("Number of rooms has not been printed")
}

if(john.residence?.address = someAddress) != nil{
    print("Adrress has been assigned")
} else {
    print("Address has not been assigned")
}

// Subindexs
if let firstRoomName = john.residence?[0].name{
    print("First room is for \(firstRoomName)")
} else {
    print("Unkwon")
}

john.residence?[0] = Room(name: "Kitchen")

let johnResidence = Residence()
johnResidence.rooms.append(Room(name: "Kitchen"))
johnResidence.rooms.append(Room(name: "Bathroom"))
johnResidence.rooms.append(Room(name: "Bedroom"))
john.residence = johnResidence

if let firstRoomName = john.residence?[0].name {
    print("First room is \(firstRoomName)")
}

var examScore = ["Alice":[10,9,8.5], "Bob":[9,9,9.5]]

examScore["Alice"]?[0] = 9.8
examScore["Bob"]?[0] += 1.0
examScore["Caroline"]?[0] = 7.0

print(examScore)

// Multiple optional levels
if let johnStreet = john.residence?.address?.street {
    print("John lives at \(johnStreet)")
} else {
    print("Unknown")
}

let johnAddress = Address()
johnAddress.street = "False"
johnAddress.buildingNumber = "321"
john.residence?.address = johnAddress

if let johnStreet = john.residence?.address?.street{
    print("John live at \(johnStreet)")
} else {
    print("Unknown")
}

if let buildingId = john.residence?.address?.buildingIdentifier(){
    print("John street ID is \(buildingId)")
} else {
    print("Unknown")
}

if let beginWith = john.residence?.address?.buildingIdentifier()?.hasPrefix("Street"){
    print("John street starts with \"Street\"")
} else {
    print("Unknown")
}