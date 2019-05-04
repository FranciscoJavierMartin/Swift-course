func functionThatTakesAClosure(closure:()->Void){

}

functionThatTakesAClosure(closure: {
    // This is the closure body
})

functionThatTakesAClosure {
    // Trailing closure with the method body to execute
}

let people = ["Mary", "John", "Jane", "Molly", "Daniel", "George"]

print(people.sorted() { $0 > $1 })
print(people.sorted { $0 > $1 })

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [18, 29, 325, 1008]

let stringNumbers = numbers.map { (number) -> String in
    var number = number // Casting to modify value
    var output = ""
    
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0

    return output
}

print(stringNumbers)

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0

    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }

    return incrementer
}

let incrementByFive = makeIncrement(forIncrement: 5)
print(incrementByFive())
print(incrementByFive())
