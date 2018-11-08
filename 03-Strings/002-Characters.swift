// Characters

for character in "Hello world"{
    print(character)
}

print("---------------")

// A single character
let questionMark: Character = "?"

let dogArray: [Character] = ["D","o","g"]
let dogString = String(dogArray)
print(dogString)

// String concat and append
let s1 = "Hello"
let s2 = " world"
var welcome = s1 + s2
welcome += " ready for the "
welcome.append("next")
print(welcome)