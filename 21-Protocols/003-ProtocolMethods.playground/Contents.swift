protocol SomeProtocol{
    func somFunc()
    static func somtTypeMethod()
}

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var seed = 42.0
    let m = 17345624.0
    let a = 2345.0
    let c = 65463.9
    
    func random() -> Double {
        seed = (seed * a + c).truncatingRemainder(dividingBy: m)
        return seed / m
    }
}

let generator = LinearCongruentialGenerator()

for _ in 1..<10 {
    print(generator.random())
}

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable{
    case on,off
    
    mutating func toggle(){
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bedroomLigth = OnOffSwitch.on
bedroomLigth.toggle()
bedroomLigth.toggle()
