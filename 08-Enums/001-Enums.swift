enum CompassPoint {
    case north
    case south
    case east
    case west
}

// Another way to write enums
enum Numbers {
    case one, two, three
}

var directionToGo: CompassPoint = CompassPoint.north
directionToGo = .west

// If all case are covered, default case is not necessary
switch directionToGo {
    case .north:
        print("North")
    case .south:
        print("South")
    case .east:
        print("East")
    case .west:
        print("West")
}

enum BarCode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarCode = BarCode.upc(6, 71680, 01362, 4)
print(productBarCode)

productBarCode = .qrCode("A68JFJAMXO·(JF(KGj/H")
print(productBarCode)

switch productBarCode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
    case .qrCode(let productCode):
        print("QR Code: \(productCode)")
}