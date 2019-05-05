class SomeClass {

    
    subscript(index:Int) -> Int {
        get{
            return 5
        }
        set(newValue){

        }
    }

    // Only read with multiple index
    subscript(index1:Int, index2:Int)->Int{
        return 7
    }
    
}

let someInstance = SomeClass()
print(someInstance[1])
print(someInstance[2,3])

struct TimesTable {
    let multiplier: Int
    subscript(index:Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
for i in 1...10{
    print("3x\(i) = \(threeTimesTable[i])")
}

//print("--------------------------")
for i in 0...10{
    let timeTable = TimesTable(multiplier: i)
    print("--------------------------")
    for j in 0...10 {
        print("\(i)x\(j) = \(timeTable[j])")
    }
}