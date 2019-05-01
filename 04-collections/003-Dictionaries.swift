var integerNames = [Int : String]()
integerNames[1] = "One"
print(integerNames)
// Drop dictionary
integerNames = [:]

integerNames = [1: "One", 2: "Two", 3: "Three"]
print("Count of integerNames: \(integerNames.count)")
print(integerNames)

if integerNames.isEmpty {
    print("There are not numbers")
} else {
    print("There are numbers")
}

// If key does not exists, returns nil, else returns the old value
if let oldName = integerNames.updateValue("None", forKey: 1){
    print("Key exists and the old value is \(oldName)")
    print("The new value is \(integerNames[1]!)")
} else {
    print("Key does not exist")
}

if let name = integerNames[1]{
    print("The current value is \(name)")
} else {
    print("There are not value for 1 key")
}

// Remove a key
integerNames[2] = nil
print(integerNames)

// Remove value
if let removedValue = integerNames.removeValue(forKey: 3){
    print("\(removedValue) removed")
} else {
    print("Key does not exists")
}

print(integerNames)

integerNames[2] = "Two"
integerNames[3] = "Three"

// Iterate around a dictionary
// If key or value is never used, replace the name with an underscore _
for(key, name) in integerNames{
    print("For key \(key), the asociated value is \(name)")
}

for integerNameKey in integerNames.keys {
    print("\(integerNameKey)")
}

integerNames[3] = "Two"
// If a value appears many times, will be used many times
for integerNameValue in integerNames.values{
    print("\(integerNameValue)")
}

// Cast to array (for keys and values)
let integerNameKeys = [Int](integerNames.keys)
let integerNameValues = [String](integerNames.values)