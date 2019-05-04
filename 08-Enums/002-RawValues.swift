enum CompassPoint: Int {
    case north = 1
    case south
    case east = 3
    case west
}

let east = CompassPoint.east.rawValue
print(east)

let direction: Int? = CompassPoint(rawValue: 2)
print(direction)