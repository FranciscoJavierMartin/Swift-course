extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex{
            decimalBase*=10
        }
        
        return (self/decimalBase)%10
    }
}

let x = 1234567
print(x[0])
let y = -1
print(y[2])
