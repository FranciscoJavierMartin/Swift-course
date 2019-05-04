indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let two = ArithmeticExpression.number(2)
let three = ArithmeticExpression.number(3)
let sum = ArithmeticExpression.addition(two, three)
let product = ArithmeticExpression.multiplication(two, three)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    let result: Int

    switch expression{
        case let .number(value):
            result = value
        case let .addition(left, right):
            result = evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            result = evaluate(left) * evaluate(right)
    }

    return result
}

print(evaluate(product))