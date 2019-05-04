let people = ["Mary", "John", "Jane", "Molly", "Daniel", "George"]

func sortBackward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedPeople = people.sorted(by: sortBackward)
print(reversedPeople)

reversedPeople = people.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})

print(reversedPeople)

// Short version. All sentences are equivalent
reversedPeople = people.sorted(by: {s1,s2 in return s1 > s2 })
reversedPeople = people.sorted(by: {s1,s2 in s1 > s2 })
reversedPeople = people.sorted(by: { $0 > $1 })
reversedPeople = people.sorted(by: > )

print(reversedPeople)
