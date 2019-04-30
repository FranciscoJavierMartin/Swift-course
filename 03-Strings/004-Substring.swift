var welcome = "Hello world"
print(welcome[welcome.startIndex])
print(welcome[welcome.index(before: welcome.endIndex)])
let index = welcome.index(welcome.startIndex, offsetBy: 7)
print(welcome[index])

for index in welcome.indices {
    print("\(welcome[index])", terminator: ".")
}
print()
welcome.insert("!", at: welcome.endIndex)
print(welcome)

welcome.insert("!", at: welcome.index(welcome.endIndex, offsetBy: -3))
print(welcome)

welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)

let range = welcome.index(welcome.endIndex, offsetBy: -3)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)

// Substring class
let blank_index = welcome.index(of: " ") ?? welcome.endIndex
let firstPart = welcome[..<blank_index] // It's a substring
let secondPart = welcome[blank_index...] // It's a substring
let newString = String(firstPart) // It's a string

// Prefix and suffix
let names = [
    "Albert",
    "Ana",
    "Alexandra",
    "Bob",
    "Beth",
    "Charles",
    "Candy"
]

var numberOfPeopleThatStartWithA = 0

for name in names{
    if name.hasPrefix("A"){
        numberOfPeopleThatStartWithA += 1
    }
}

print(numberOfPeopleThatStartWithA)

var numberOfPeopleThatEndsWithA = 0

for name in names {
    if name.hasSuffix("a"){
        numberOfPeopleThatEndsWithA += 1
    }
}

print(numberOfPeopleThatEndsWithA)