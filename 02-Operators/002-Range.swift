// Ranges

// Closed ranges (a...b) -> a <= x <= b

for index in 1...10 {
    print(index)
}

print("---------------")

// Semi-open ranges (a..<b) -> a <= x < b
let names = ["Aaron", "Beth", "Charles", "Diana", "Edgar", "Frank", "George"]

for i in 0..<names.count {
    print(names[i])
}

print("---------------")

// Unilateral range (a...) or (...a)

for name in names[2...]{
    print(name)
}

print("---------------")

for name in names[...3]{
    print(name)
}

let infiniteRange = ...5