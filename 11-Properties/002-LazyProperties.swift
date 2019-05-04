class DataImporter {
    var filename = "mydata.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("First line")
manager.data.append("Second line")
// importer variable inside DataManager is not yet initilize

// Now it is accesed so it is initialize
print(manager.importer.filename)
