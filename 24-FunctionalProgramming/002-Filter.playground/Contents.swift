let numbers = [1,2,3,4,5,6,7,8]

print(numbers.filter{(number) -> Bool in
    return number % 2 == 0
})

print(numbers.filter {$0 % 2 == 0})

let dictionary = [
    "Triangle": 3,
    "Square": 4,
    "Circle": 0
]

print(dictionary.filter {(figure, numberOfCorners) -> Bool in
    return numberOfCorners > 2
});

print(dictionary.filter{$1 > 2})
