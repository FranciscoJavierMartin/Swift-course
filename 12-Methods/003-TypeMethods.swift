class SomeClass {

    static var staticValue: Int = 0
    var value:Int = 0

    class func someFunc(){
        // Only staic properties can be accesed
        // value = 5
        staticValue = 5
    }

    static func anotherFunc(){

    }
}

SomeClass.someFunc()

SomeClass.anotherFunc()

struct LevelTracker{
    static var highestUnlockedLevel = 1
    var currentLevel = 1

    static func unlock(_ level:Int){
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }

    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }

    @discardableResult
    mutating func advance(to level:Int)->Bool{
        let res: Bool
        
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            res = true
        } else {
            res = false
        }

        return res
    }
}

class Player{
    var tracker = LevelTracker()
    let playerName: String

    // Constructor
    init(name: String){
        self.playerName = name
    }

    func complete(level: Int){
        LevelTracker.unlock(level+1)
        tracker.advance(to: level+1)
    }
}

var player = Player(name: "John")
player.complete(level: 8)
print("The highest level unlocked is \(LevelTracker.highestUnlockedLevel)")

player = Player(name: "Maria")
if player.tracker.advance(to: 6){
    print("Player is now on level 6")
} else {
    print("Player cannot go to level 6 yet")
}