// Asserts and preconditions

let age = -8

assert(age >= 0, "A person cannot be negative age")

if age > 10 {
    print("You are old")
}else if age > 0 {
    print("You are young")
}else{
    assertionFailure("A Person cannot be negative age")
}