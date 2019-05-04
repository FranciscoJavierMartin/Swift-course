struct SomeStruct{
    var width = 0
    var height = 0
}

let someInstance = SomeStruct()
print("Width: \(someInstance.width)")
someInstance.width = 1
print("Width: \(someInstance.width)")

// It's a copy
let anotherInstance = someInstance

// When to use a struct?
// - Simple data encapsulation
// - Data that will be modify
// - Struct properties are passed by reference
// - There are not need of extends