struct FixedLengthRange {
    // Stored property
    var firstValue: Int
    let lenght: Int
}

var rangeOfFourItems = FixedLengthRange(firstValue: 0, lenght: 4)
rangeOfFourItems.firstValue = 6

let newRangeOfFourItems = FixedLengthRange(firstValue: 0, lenght: 4)
// It is not possible due is assigned by 'let'
//newRangeOfFourItems.firstValue = 6