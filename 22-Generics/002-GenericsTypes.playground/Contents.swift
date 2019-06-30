struct IntStack {
    var items = [Int]()
    
    mutating func push(_ item: Int){
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stringStack = Stack<String>()
var intStack = Stack<Int>()

stringStack.push("Hello")
print(stringStack.pop())

intStack.push(1)
print(intStack.pop())

extension Stack{
    var topItem: Element? {
        let res: Element?
        
        if items.isEmpty {
            res = nil
        } else {
            res = self.items[items.count - 1]
        }
        
        return res
    }
}
