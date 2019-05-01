let goal 25
var board = [Int](repeating: 0, count: goal+1)

// Up
board[3]= +8
board[6]= +11
board[9]= +9
board[10]= +2

// Down
board[14]= -10
board[19]= -11
board[22]= -2
board[24]= -8

var square = 0
var dice = 0

gameLoop: while square < goal {
    dice = (dice +1)%7 +1

    square+=dice

    if square < board.count {
        square+=board[square]
    }

    
    switch square + dice {
        case goal:
            print("I win")
            break gameLoop
        case let newSquare where newSquare > goal:
            continue gameLoop
        default:
            square += dice
            square += board[square]
    }
    
}

print("Game over")