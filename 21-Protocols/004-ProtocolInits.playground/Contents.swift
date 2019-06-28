protocol SomeProtocol {
    init(someParameter: Int)
}

class SomeClass: SomeProtocol{
    required init(someParameter: Int) {
        
    }
}

protocol SIngleProtocol {
    init()
}

class SingleSuperClass{
    init() {
        
    }
}

class SingleSubclass: SingleSuperClass, SIngleProtocol{
    // required: for protocol and not final class
    // override: for subclass
    required override init() {
        
    }
}
