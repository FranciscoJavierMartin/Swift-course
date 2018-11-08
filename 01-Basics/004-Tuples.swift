// Tuples

let httpError : (Int,String) = (404,"Error, not found")

let (statusCode, statusMessage) = (404,"Error, not found")

print(statusCode)
print(statusMessage)

let (anotherStatusCode, _) = (200,"Page found")
print(anotherStatusCode)

//Tuple index
print("First component is \(httpError.0), second component is \(httpError.1)")

// Named index
let http200 = (statusCode: 200, description: "OK")
print(http200.statusCode)
print(http200.description)