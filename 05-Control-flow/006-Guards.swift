func greet(person: [String: String]){
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)")
}

greet(person:["namea": "John"])