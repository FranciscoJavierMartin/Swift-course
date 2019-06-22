extension Int {
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind{
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}


func printIntegerKinds(_ numbers: [Int]){
    for number in numbers{
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print(0 , terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
}

print([1,4,7,-2,1,-3,0,-0,8,0-5,6,-3, -0])
