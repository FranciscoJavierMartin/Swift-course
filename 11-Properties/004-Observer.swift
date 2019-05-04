class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalStep){
            print("Value has not changed yet")
        }

        didSet{
            print("Value has just changed")
            if totalSteps > oldValue{
                print("You can access to old value using oldValue")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 1500

stepCounter.totalSteps = 3800

stepCounter.totalSteps = 3800