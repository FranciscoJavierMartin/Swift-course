enum VendingMachineError: Error {
    case invalidSelection
    case insuficientFunds(coinsNeeded: Int)
    case outOfStock
}

/*throw VendingMachineError.insuficientFunds(coinsNeeded: 10)

func thisCannotThrowErrors() -> String{
    return "Hello"
}

func thisCanThrowErrors() throw -> String{
    return "Hello"
}*/

struct Item {
    var name: String
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        Item(name: "Item1", price: 5, count: 4),
        Item(name: "Item2", price: 3, count: 1),
        Item(name: "Item3", price: 7, count: 3)
    ]

    var coinsNeeded = 0

    func vend(itemNamed name: String) throws {
        var currentItem : Item? = nil
        var pos = 0
        for tempItem in inventory {
            if tempItem.name == name {
                currentItem = tempItem
                break;
            }
            pos += 1
        }

        if currentItem == nil {
            throw VendingMachineError.invalidSelection
        }
        
        guard currentItem.count>0 else {
            throw VendingMachineError.outOfStock
        }

        guard currentItem!.price <= coinsNeeded else {
            throw VendingMachineError.insuficientFunds(coinsNeeded: currentItem!.price - coinsNeeded)
        }

        coinsNeeded -= currentItem!.price

        var newItem = currentItem!
        newItem.count -= 1
        inventory[pos] = newItem

        print("Delivering item \(currentItem!.name)")
    }
}

let favoriteItem = [
    "Alice": "Item1",
    "Bob": "Item2",
    "Caroline": "Item3"
]

func purchaseFavoriteItem(person: String, vendingMachine:VendingMachine) throws{
    let itemName = favoriteItem[person] ?? "Item1"
    try vendingMachine.vend(itemNamed: itemName)
}

struct PurchaseItem{
    let name: String
    
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 5

do{
    try purchaseFavoriteItem(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("Item selection is not valid")
} catch VendingMachineError.outOfStock {
    print("There are not stock")
} catch VendingMachineError.insuficientFunds(let coinsNeeded) {
    print("Introduce \(coinsNeeded) aditionals coins")
}

// Transform a return value to an optional

func someThrowingFunction() throws -> Int {
    return -1;
}

let x = try? someThrowingFunction()

// Another way
let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}