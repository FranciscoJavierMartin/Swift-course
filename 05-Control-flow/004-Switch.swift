let character: Character = "o"

switch character {
    case "a":
        print("Albert")
    case "e":
        print("Eugene")
    case "i":
        print("Irene")
    case "o":
        print("Oswald")
    case "u":
        print("Ursula")
    default:
        print("No name")
}

switch character {
    case "a", "e", "i", "o", "u":
        print("Start with vowel")
    default:
        print("No name")
}

let moons = 62
let amount: String
switch moons{
    case 0:
        amount = "any"
    case 1..<5:
        amount = "a little"
    case 5..<12:
        amount = "some"
    case 12..<100:
        amount = "a few"
    default:
        amount = "unknown"
}
print(amount)

let point = (1,1)

// Only be executed the first that found
switch point{
    case (0,0):
        print("It zero")
    case (_, 0):
        print("Wild card")
    case (-2...2,-3...4):
        print("Inside region")
    default:
        print("Unknown")
}

switch point {
    case (let x, 0):
        print("X coord is \(x)")
    case (0, let y):
        print("Y coord is \(y)")
    case let(x,y):
        print("Y coord is \(y) and X coord is \(x)")
}

// Where inside switch
switch point{
    case let(x,y) where x==y:
        print("Both are equals")
    case let(x,y) where x == -y:
        print("Both are similar") 
    case let(x,y):
        print("Unknown")
}