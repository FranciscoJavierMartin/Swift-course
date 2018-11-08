// Exercise 1

let maxNumberOfPeopleToRegister: UInt = 10

// Exercise 2

var pirateName: String = "Jack Sparrow"
let message: String = "is a bad pirate"
print("\(pirateName) \(message)")

// Exercise 3"
let separator: String = ", "
var deadPirates: [String] = ["Edward","Ace","Roger","Shanks"]
var newPirates: [String] = ["Luffy", "Law", "Kidd", "Zoro"]

print("\(deadPirates.count) had fallen on battlefield: \(deadPirates.joined(separator: separator))")
print("\(newPirates.count) has arrive to the journey \(newPirates.joined(separator: separator))")

/*let date = Date()
let formatDate = DateFormatter()
formatDate.dateStyle = .full
formatDate.timeStyle = .full
print(formatDate.string(from: date))*/

// Exercise 4

var captainAge: UInt8 = 35
var captainYears: UInt8 = 2

/*var password: UInt64 = UInt64(pow(Double(captainAge),Double(captainYears)))

print("Password: \(password)")*/

// Exercise 5
let n1 = 691
let n2 = 345
let n3 = 827

let c1 = String(n1, radix: 2)
let c2 = String(n2, radix: 8)
let c3 = String(n3, radix: 16)

print("Treasure keys:")
print("Key 1: \(c1)")
print("Key 2: \(c2)")
print("Key 3: \(c3)")

// Exercise 6
let pirates = ["Blackbeard", "Benjamin", "Charles", "James", "William", "Edward"]
var bounty = [true, false, true, false, true, false]

// Exercise 7
var bountyPirates = [(String,Int)]()
bountyPirates = [("Blackbeard",1),("Benjamin",2),("Charles",0),("James",1)]