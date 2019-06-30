class HTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML : () -> String = {
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name)/>"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) has been deinitialized")
    }
}

let heading = HTMLElement(name: "h1")
let defaultText = "Default text"

heading.asHTML = {
    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"
}

print(heading.asHTML())

var paragraph : HTMLElement? = HTMLElement(name: "p", text: "This is an example paragraph")
print(paragraph!.asHTML())
paragraph = nil

protocol SomeProtocol{
    
}

class SomeClass {
    var delegate : SomeProtocol?

    lazy var someClosure : (Int, String) -> String = {
        (unowned self,  weak delegate = self.delegate!)
        (index: Int, stringtoProcess: String) -> String in
        
        return "Hello"
    }
    
    lazy var anotherClosure: () -> String = {
        [unowned self, weak delegate = self.delegate!] in
        return "Another"
    }
}
