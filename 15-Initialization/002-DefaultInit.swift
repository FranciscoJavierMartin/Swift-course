class SoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false


}

var item = SoppingListItem()

struct Size {
    var width = 0.0, height = 0.0
}

let threeByThree = Size(width: 3.0, height: 3.0)
let zeroSize = Size()

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()

    init(){}

    init(origin: Point, size: Size){
        self.origin = origin
        self.size = size
    }

    init(center: Point, size: Size){
        let originX = center.x - size.width / 2
        let originY = center.y - size.height / 2
        let newOrigin = Point(x: originX, y: originY)
        self.init(origin: newOrigin, size: size)
    }
}

let basicRect = Rect()

let originRect = Rect(origin: Point(x: 3.0, y: 2.0),
                        size: Size(width: 6.0, height: 6.0))

let centerRect = Rect(center: Point(x: 5.0, y: 5.0), 
                        size: Size(width: 3.0, height: 3.0))