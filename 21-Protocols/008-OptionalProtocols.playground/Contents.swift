//someMethod(Int) -> String
//((Int) -> String)?
//someMethod?(someArgument)
import Foundation

@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement : Int { get }
}

class Counter {
    var count = 0
    var dataSource : CounterDataSource?
    
    func increment() {
        if let amount = dataSource?.increment?(forCount: self.count){
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}

class FiveSource: NSObject, CounterDataSource {
    let fixedIncrement: Int = 3
}

var counter = Counter()
counter.dataSource = FiveSource()

for _ in 1...10 {
    counter.increment()
    print(counter.count)
}

class TowardsZeroSource: NSObject, CounterDataSource {
    func increment(forCount count: Int) -> Int {
        let res: Int
        
        if count == 0 {
            res = 0
        } else if count < 0 {
            res = 1
        } else {
            res = -1
        }
        
        return res
    }
}

counter.dataSource = TowardsZeroSource()

while counter.count != 0{
    counter.increment()
    print(counter.count)
}
