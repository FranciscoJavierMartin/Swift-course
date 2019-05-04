struct Point{
    var x = 0.0, y = 0.0
}

struct Size{
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()

    // Computed property. Computed properties must be declared with 'var'
    var center: Point {
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            let theCenter = Point(x: centerX, y: centerY)
            return theCenter
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y:0.0),
     size: Size(width: 10, height: 10))

print(square.center)

square.center = Point(x:25, y: 25)
print(square.center)

struct AlternativeRect{
    var origin = Point()
    var size = Size()
    var center: Point {
        get{
            return Point(x:origin.x+(size.width/2), y:origin.y+(size.height/2))
        }
        // Alternative version using the newValue
        set{
            origin.x = newValue.x -(size.width/2)
            origin.y = newValue.y -(size.height/2)
        }
    }
}