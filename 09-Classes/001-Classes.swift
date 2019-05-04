// Classes and structures
/*
    - properties
    - methods
    - constructors
    - expand
    - protocols
*/

// Classes
/*
    - Inheritance
    - Type casting
    - De-initialize
    - Reference counting
*/

class SomeClass{
    var width = 0
    var height = 0
    var name: String?
}

let someInstance = SomeClass()
print("Width: \(someInstance.width)")
someInstance.width = 1
print("Width: \(someInstance.width)")

// It is a reference
let anotherInstance = someInstance
anotherInstance.width = 2
print("Another instance: \(anotherInstance.width)")
print("Some instance: \(someInstance.width)")

if anotherInstance === someInstance {
    print("They are the same instance")
}