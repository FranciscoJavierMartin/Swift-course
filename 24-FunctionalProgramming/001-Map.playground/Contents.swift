let myNumbers = [1,2,3,4,5,5]

print(myNumbers.map { (number) -> Int in
    return number * 2
})

// Another way
print(myNumbers.map { $0 * 2 })

let dictionary = [
    "Triangle": 3,
    "Square": 4,
    "Circle": 0
]

print(dictionary.map {(figure, numberOfCorners) -> String in
    return "\(figure): \(numberOfCorners)"
})

print(dictionary.map({"\($0): \($1)"}))
