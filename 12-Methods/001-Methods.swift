class Counter{
    var counter = 0

    func increment(){
        self.counter+=1
    }

    func increment(by amount: Int){
        self.counter += amount
    }

    func reset(){
        self.counter = 0
    }
}

let myCounter = Counter()
print(myCounter.counter)

myCounter.increment()
print(myCounter.counter)

myCounter.increment(by: 8)
print(myCounter.counter)

myCounter.reset()
print(myCounter.counter)