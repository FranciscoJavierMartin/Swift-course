func sayHello(person: String) -> String {
    let greeting = "Hello \(person)"
    return greeting
}

// If the parameters have different names, it's a different function
func sayHello(animal: String) -> String {
    let greeting = "Hello \(animal)"
    return greeting
}

print(sayHello(person: "John"))
print(sayHello(animal: "Toby"))

// If not return nothing
func noReturn(parameter: String){
    print(parameter)
}

// Multiple values returns
func returnTuple(parameter: String) -> (min: Int, max: Int) {
    return (0,1)
}

// Multiple tags for a parameter
func mutipleTags(name1 name2: String){
    print("\(name2)")
}

mutipleTags(name1: "Hello world")

// Optional tags (Optional write)
func optionalTags(_ parameter: String){
    print(parameter)
}

optionalTags("OptionalTag")

// Default value for parameters
func defaultParameter(parameter: String = "Default parameter"){
    print(parameter)
}

defaultParameter()

// Multiple values
func sum(_ numbers: Int...)->Int{
    var total: Int = 0
    for number in numbers {
        total += number
    }

    return total
}

print(String(sum(1,2,3,4,5)))

// Inout parameters
func swap(a: inout Int, b: inout Int){
    let temp = a
    a = b
    b = temp
}

var a = 1
var b = 2
swap(&a,&b)
print("A: \(a) B: \(b)")