// Strings

// Multiline strings
let lines = """
En un lugar de "La Mancha",
de cuyo nombre no quiero acordarme,
no ha mucho que vivia
"""

print(lines)

print("---------------")

// Escape three quotations marks
let anotherLines = """
En un lugar de \"""La Mancha\"\"\",
de cuyo nombre no quiero acordarme,
no ha mucho que vivia
"""

print(anotherLines)

// Check if a string is empty
let emptyString = ""
print(emptyString.isEmpty)

// Concat strings and reassign (only on vars)
var title = "Harry Potter"
title += " and the prissioner of Azkaban"
print(title)
print("Amount of characters: \(title.count)")