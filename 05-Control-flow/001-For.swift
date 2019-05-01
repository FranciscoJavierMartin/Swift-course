let numbers = ["One", "Two", "Three", "Four", "Five"]

for number in numbers {
    print("\(number)")
}

let numbersWithName = [1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five"]

for (key, value) in numbersWithName {
    print("For key \(key) has the value \(value)")
}

// Include 5
for i in 1...5{
    print("3x\(i)=\(3*i)")
}

let seconds = 60

// Exclude 60
for tick in 0..<seconds {
    print("Tick \(tick)")
}

let secondInterval = 5

// For intervals. Exclude the 60 seconds
for tick in stride(from: 0, to: seconds, by: secondInterval){
    print("We go for \(tick)")
}

// For intervals. Include the 60 seconds
for tick in stride(from: 0, through: seconds, by: secondInterval){
    print("We go for \(tick)")
}