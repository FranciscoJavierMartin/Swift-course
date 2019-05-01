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

while square < goal {
    dice = (dice +1)%7 +1

    square+=dice

    if square < board.count {
        square+=board[square]
    }
}

print("Game over")

// Equivalent to do while in others languages
repeat {
    square += board[square]
    dice += 1

    if dice == 7{
        dice = 1
    }

    square += dice

} while square < goal

print("Game over")
