class Person{
    var residence: Residence?
}

class Residence{
    var numberOfRooms = 1
}

let john = Person()
print(john.residence)

if let roomCount = john.residence?.numberOfRooms{
    print("John's house has \(roomCount) rooms")
} else {
    print("Unknown")
}