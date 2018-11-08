// Numbers
//UInt8: 8 bits integer witout sign
//Int32: 32 bits integer

let minValue = UInt8.min
let maxValue = UInt8.max

print(minValue)
print(maxValue)

/*
    On 32-bits machines, Int takes Int32 and on 64-bits machines take Int64
*/

// Use underscore like thousands separator
let overOneMillion = 1_000_000.000_000_1

// Rename types with typealias
typealias AudioSample = UInt16