
// Classes
// Should be marked with class keyword
// create your own init initializer mandatory
class Animal {
    var legs: Int
    var name: String
    
    init(numberOfLegs: Int, name: String) {
        print("Animal created")
        self.legs = numberOfLegs
        self.name = name
    }
}

var dog = Animal(numberOfLegs: 4, name: "Tommy")
dog.legs
dog.name

// Inheritence
// Create a Main Parent Class - Super class
// Create a new class (subclass) and inherit from the super class
// All the main classe's properties and methods are inherited
// Class classname: SuperClass
// The subclass can have its own initializer or call the super class initializer via super.init()

class Amphibian: Animal {
    init(myName: String) {
        super.init(numberOfLegs: 2, name: myName)
    }
}
let frog = Amphibian(myName: "Frog")

// Overriding Methods
// new implementations of existing parent class methods - usually prefixed by override
class Cricket {
    var format: String
    
    init(nameOfFormat: String) {
        self.format = nameOfFormat
        print("Cricket Initialized!")
    }
    
    func cheer() {
        print("Cricket....Cricket!!!")
    }
}

class IPL: Cricket {
    var name: String
    init(team: String) {
        self.name = team
        super.init(nameOfFormat: "IPL")
    }
    
    override func cheer() {
        print("IPL...\(self.name)...\(self.name)")
    }
}

let csk = IPL(team: "CSK")
csk.cheer()
