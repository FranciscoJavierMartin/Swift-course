var someInts: [Int] = []
var moreInts = [Int]()

print("Array has \(someInts.count) elements")
someInts.append(3)
print("Array has \(someInts.count) elements")

var threeDoubles = Array(repeating: 0.0, count: 3)
var fourDoubles = Array(repeating: 1.0, count: 4)

// Concat arrays of same type
var sevenDoubles = threeDoubles + fourDoubles

print("SevenDoubles has \(sevenDoubles.count) elements")

var names: [String] = ["Albert", "Beth", "Charles", "Diane", "Edgar"]
print("Number of names \(names.count)")

if names.isEmpty {
    print("Names are empty")
} else {
    print("Names are not empty")
}

names += ["Frank"]
names += ["Grettel", "Hansel"]

let firstName = names[0]
names[0] = "Alice"
print("First name is \(names[0])")

// Replace range
names[2...4]=["Carol", "David"]
print(names)

names.insert("Beatrice", at: 3)
print(names)

let removedName = names.remove(at:3)
print(names)

let lastName = names.removeLast()
print(names)

// Iterate only item
for name in names{
    print(name)
}

// Iterate item and index
for (index, name) in names.enumerated(){
    print("\(index): \(name)")
}