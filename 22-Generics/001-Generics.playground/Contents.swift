func swapToInt(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}

var someInt = 5
var anotherInt = 6
swapToInt(&someInt, &anotherInt)
print("SomeInt is \(someInt)")
print("AnotherInt is \(anotherInt)")

func swapTowValues<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b = temp
}

var something = 9
var another = 1
swapTowValues(&something, &another)
print("SomeInt is \(something)")
print("AnotherInt is \(another)")
