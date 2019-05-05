class Vehicle {
    var currentSpeed = 0.0

    var description: String {
        return "Current speed \(currentSpeed)"
    }

    func makeNoise(){

    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle: Vehicle{
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycling to \(bicycle.description)")

class Car: Vehicle{
    var manufacturer = ""
    var model = ""
    override var description : String {
        return super.description + " in a car"
    }
}

let car = Car()
car.manufacturer = "DeLorean"
car.model = "Model"
car.currentSpeed = 140.0
print("Travel machine: \(car.description)")

class Tandem: Bicycle{
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 12.0
print("Tandem: \(tandem.description)")

class Train: Vehicle{

    override func makeNoise(){
        print("Choo chooo")
    }
}

let train = Train()
train.makeNoise()

// Final indicate that is not possible to extends from MyClass, or override its
// methods.
final class MyClass : Vehicle{

}