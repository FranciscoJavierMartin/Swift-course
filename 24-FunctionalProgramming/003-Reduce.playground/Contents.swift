let dictionary = [
    "Triangle": 3,
    "Square": 4,
    "Circle": 0
]

let numbers = [1,2,3,4,5,6,7,8]

print(numbers.reduce(0) {(accumulator, number) -> Int in
    return accumulator + number
})

print(numbers.reduce(0){$0+$1})

print(dictionary.reduce(0) { (totalCorners, figure) -> Int in
    return totalCorners + figure.value
})

print(dictionary.reduce(0){$0 + $1.value})
