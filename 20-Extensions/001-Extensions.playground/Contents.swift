/*struct SomeStructure {
    let x: Int
}

extension SomeStructure{
    
}

extension SomeStructure: SomeProtocol, AnotherProtocol {
    
}*/

extension Double{
    var m:Double {return self}
    var km: Double{return self * 1_000.0}
    var cm: Double {return self / 100.0}
    var mm: Double {return self / 1_000.0}
    var ft: Double {return self / 3.28084}
}


let halfKm = 0.5.km
let threeFeet = 3.ft
let onInch = 25.4.mm

print("\(halfKm) m")

let marathon = 42.km + 195.m
print("A marathon are \(marathon.m) m")
