protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 29.0
    let m = 12345.0
    let a = 543234.0
    let c = 987643.0
    
    func random() -> Double {
        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
        return lastRandom / m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random()*Double(sides))+1;
    }
    
}

let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())

for _ in 1...10 {
    print(dice.roll())
}

protocol DiceGame {
    var dice: Dice {get}
    func play()
}

protocol DiceGameDelegate{
    func gameDidStart(_ game: DiceGame)
    func game(_ game : DiceGame, didStartTurnWithDiceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}


class SnakesAndLadders : DiceGame {
    let finalSquare = 25
    let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
    var square = 0
    var board: [Int]
    
    init() {
        board = Array(repeating: 0, count: finalSquare + 1)
        
        board[03] = +08
        board[06] = +11
        board[09] = +09
        board[10] = +02
        
        board[14] = -10
        board[19] = -11
        board[22] = -02
        board[24] = -08
    }
    
    var delegate: DiceGameDelegate?
    
    func play() {
        square = 0
        delegate?.gameDidStart(self)
        
        gameLoop: while square != finalSquare {
            let diceRoll = dice.roll()
            delegate?.game(self, didStartTurnWithDiceRoll: diceRoll)
            
            switch square + diceRoll {
            case finalSquare:
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                continue gameLoop
            default:
                square += diceRoll
                square += board[square]
            }
        }
        
        delegate?.gameDidEnd(self)
    }
}

class Ludo: DiceGame {
    let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
    var delegate: DiceGameDelegate?
    
    func play() {
        delegate?.gameDidStart(self)
        
        delegate?.gameDidEnd(self)
    }
}

class DiceGameTracker: DiceGameDelegate {
    var numberOfTurns = 0
    
    func gameDidStart(_ game: DiceGame) {
        numberOfTurns = 0
        
        if game is SnakesAndLadders {
            print("Let start a new snake and ladders game")
        } else if game is Ludo {
            print("Let start a ludo game")
        }
        
        print("Dice with \(game.dice.sides) sides")
    }
    
    func game(_ game: DiceGame, didStartTurnWithDiceRoll diceRoll: Int) {
        numberOfTurns += 1
        print("Current dice roll \(diceRoll)")
    }
    
    func gameDidEnd(_ game: DiceGame) {
        print("Game had \(numberOfTurns) turns")
    }
    
}

let tracker = DiceGameTracker()

let game = SnakesAndLadders()

game.delegate = tracker

game.play()

protocol TextRepresentable {
    var textRepresentation : String { get }
}

extension Dice: TextRepresentable {
    var textRepresentation: String {
        return "A dice of \(sides) sides"
    }
}

let d20 = Dice(sides: 20, generator: LinearCongruentialGenerator())
print(d20.textRepresentation)

extension SnakesAndLadders : TextRepresentable {
    var textRepresentation: String {
        return "Snake and ladders has \(finalSquare) cells"
    }
}

print(game.textRepresentation)

class TheGooseGame {
    var finalBoard = 63
    var textRepresentation : String {
        return "The goose game has \(finalBoard) cells"
    }
}

extension TheGooseGame : TextRepresentable {}

let theGooseGame = TheGooseGame()
print(theGooseGame.textRepresentation)

let protocols : [TextRepresentable] = [game, d20, theGooseGame]

for p in protocols{
    print(p.textRepresentation)
}

protocol SomeProtocol {
    
}

protocol AnotherProtocol {
    
}

protocol InheritingProtocol : SomeProtocol, AnotherProtocol {
    
}

protocol PrettyTextRepresentable : TextRepresentable {
    var prettyTextualDescription: String { get }
}

extension SnakesAndLadders : PrettyTextRepresentable {
    var prettyTextualDescription: String {
        var output = textRepresentation + ":\n"
        for index in 1...finalSquare {
            switch board[index] {
            case let ladder where ladder > 0:
                output += "\u{25b3}"
            case let snake where snake < 0:
                output += "\u{25bd}"
            default:
                output += "\u{25a2}"
            }
        }
        
        return output
    }
}

print(game.prettyTextualDescription)

protocol SomeClassOnlyProtocol: AnyObject, SomeProtocol {
    
}
