// Only for structs, on a class it is not necessary
struct Point{
    var x=0.0,y=0.0

    mutating func moveBy(x deltaX:Double, y deltaY: Double){
        x+=deltaX
        y+=deltaY
    }
}

var somePoint = Point(x: 1.0, y: 2.0)
somePoint.moveBy(x:3.0, y:5.0)
print("Point is on (\(somePoint.x), \(somePoint.y))")

// Constants cannot call to mutating methods

struct Point2{
    var x=0.0,y=0.0

    // Same that previous struct
    mutating func moveBy(x deltaX:Double, y deltaY: Double){
        self = Point2(x: x+deltaX, y: y+deltaY)
    }
}

var newPoint = Point2(x:2.0, y:5.0)
newPoint.moveBy(x:1.0, y: 3.0)

enum CharactersState{
    case mage, warrior, archer

    mutating func nextCharacter(){
        switch self{
            case .mage:
                self = .warrior
            case .warrior:
                self = .archer
            case .archer:
                self = .mage
        }
    }
}

var myCharacter = CharactersState.warrior
print(myCharacter)
myCharacter.nextCharacter()
print(myCharacter)
myCharacter.nextCharacter()
print(myCharacter)
myCharacter.nextCharacter()
print(myCharacter)