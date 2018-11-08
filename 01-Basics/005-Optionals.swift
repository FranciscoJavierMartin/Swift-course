// Optionals
let number = "123"
let convertedNumber = Int(number) // It's Int?
//print(convertedNumber)

// Can take nil value
var serverResponseCode : Int? = 404
serverResponseCode = nil

// By default is nil
var answer: String?

let randomValue: Int? = 1234

// If I am sure that a value is not nil, use ! after the variable name to avoid optional
if randomValue != nil {
    print("\(randomValue!)")
}

// Optional binding

if let actualNumber = Int(number) {
    print("Number: \(actualNumber)")
}else{
    print("\(number) is not a integer")
}

// Multiple conditions (AND)

if let firstNumber = Int("12"),
    let secondNumber = Int("23"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}