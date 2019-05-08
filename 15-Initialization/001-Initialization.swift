struct Farenheit{
    var temperature: Double

    init(){
        temperature = 32.0
    }
}

var f = Farenheit()

print("Current temperature is \(f.temperature) ºF")

// Custom initialization
struct Celsius{
    var temperature: Double
    init(){
        temperature = 25.0
    }

    init(fromFarenheit farenheit: Double){
        temperature = (farenheit-32.0)/1.8
    }

    init(fromKelvin kelvin: Double){
        temperature = kelvin - 273.15
    }

    init(_ celsius: Double){
        temperature = celsius
    }
}

let currentTemperature = Celsius()
print("Current temperature is \(currentTemperature.temperature) ºC")

let boliningPointOfWater = Celsius(fromFarenheit: 212.0)
print("Bolining point of water is \(boliningPointOfWater.temperature) ºC")

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print("Freezing point of water is \(freezingPointOfWater.temperature) ºC")

let customTemperature = Celsius(20.0)
print("Custom temperature \(customTemperature.temperature) ºC")

struct Color{
    let red, green, blue: Double

    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }

    init(white: Double){
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let midGrey = Color(white: 0.5)

class SurveyQuestion {
    let question: String
    var response: String?

    init(question: String){
        self.question = question
    }

    func ask(){
        print(question)
    }
}

let pizzaQuestion = SurveyQuestion(question: "Is ok?")
pizzaQuestion.ask()
pizzaQuestion.response = "Yes"
print(pizzaQuestion.response)