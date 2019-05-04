// Escaping closures. For completion handlers

var completionHandlers: [() -> Void] = []
func somFunctionWithEscapingClosures(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonEscapingClosure(closure: () -> Void){
    closure()
}

class SomeClass {
    var x = 10

    func doSomething(){

        // This function is not executed until is called.
        // For now only is saved the completionHandler
        somFunctionWithEscapingClosures{
            self.x = 100
        }

        // This function is executed
        someFunctionWithNonEscapingClosure{
            x = 200
        }
    }
}

let theElement = SomeClass()
theElement.doSomething()
print(theElement.x)