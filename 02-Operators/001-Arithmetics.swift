// On compare tuples examine the first index to compare

let a = (1,"ZZZ")
let b = (2,"AAA")

print(a < b)

// Elvis operator with nil

let defaultColor = "green"
var userSelectedColor: String? = "red"
var colorToUse = userSelectedColor ?? defaultColor
// This expression is equivalent
//var colorToUse = userSelectedColor != nil ? userSelectedColor : defaultColor