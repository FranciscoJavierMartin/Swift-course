protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct IntStack: Container {
    var items = [Int]()
    
    mutating func push(_ item: Int){
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    typealias Item = Int
    mutating func append(_ item: Int) {
        self.push(item)
    }
    
    var count: Int {
        return self.items.count
    }
    
    subscript(i:Int) -> Int {
        return items[i]
    }
    
}

struct Stack<Element> : Container {
    var items = [Element]()
    
    mutating func push(_ item: Element){
        return items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    mutating func append(_ item: Element) {
        self.push(item)
    }
    
    var count: Int{
        return items.count
    }
    
    subscript(i:Int) -> Element {
        return items[i]
    }
}

func allItemsMatch<C1: Container, C2: Container>
    (_ someContainer:C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item: Equatable {
        var res: Bool = true
        
        if someContainer.count != anotherContainer.count {
            res = false
        } else {
            
            for i in 0..<someContainer.count {
                if someContainer[i] != anotherContainer[i] {
                    res = false
                }
            }
            
        }
        
        return res
}

extension Stack where Element: Equatable {
    func isTop(_ item: Element) -> Bool {
        guard let topItem = items.last else {
            return false
        }
        
        return topItem == item
    }
}

struct NotEquatable {
    
}

var notEquatableStack = Stack<NotEquatable>()
let notEquatableValue = NotEquatable()
notEquatableStack.push(notEquatableValue)

extension Container where Item: Equatable {
    func startsWith(_ item: Item) -> Bool {
        return count >= 1 && self[0] == item
    }
}

extension Container where Item == Double {
    func average() -> Double {
        var sum = 0.0
        for index in 0..<count {
            sum += self[index]
        }
        return sum/Double(count)
    }
}
