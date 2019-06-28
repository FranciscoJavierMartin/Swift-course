protocol SomeProtocol {
    
}

protocol AnotherProtocol {
    
}

struct SomeStruct: SomeProtocol, AnotherProtocol{
    
}

class SuperClass {
    
}

// Classes must be first
class SubClass: SuperClass, SomeProtocol, AnotherProtocol{

}
