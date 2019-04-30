// Initialize empty characters set
var letters = Set<Character>()

letters.insert("a")
// Reassign with empty set
letters = []

// It is a set
var colors: Set<String> = ["Red", "Blue"]
// Danger: It is an array
var moreColors: Set = ["Yellow", "Green"]

colors.insert("Purple")

// Remove with safe casting
if let removedColor = colors.remove("Purple"){
    print("\(removedColor) has been removed")
} else {
    print("Set does not contain the element")
}

// Ordered set
for color in colors.sorted(){
    print(color)
}

// Set operations
let pairs : Set<Int> = [0,2,4,6,8]
let odds: Set<Int> = [1,3,5,7,9]
let primes: Set = [2,3,5,7]

// Union
print("Union \(pairs.union(odds))")
// Intersection
print("Intersection \(pairs.intersection(odds))")
// Substract
print("Substract \(odds.subtracting(primes))")
// Symmetric difference
print("Symmetric difference \(pairs.symmetricDifference(primes))")

// Belong to set
let houseAnimals: Set<String> = ["Dog", "Cat"]
let farmAnimals: Set<String> = ["Cow", "Pig", "Dog", "Chicken","Cat"]
let cityAnimals: Set<String> = ["Mouse", "Crow"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of:houseAnimals))
print(farmAnimals.isStrictSuperset(of:houseAnimals))
print(farmAnimals.isDisjoint(with:cityAnimals))