
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

// Final Class
// Classes which are prefixed final can stop subclasses which cannot inherit properties from super class
// use final class as it is

final class SuperFinalClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

// Below code results in error because subFinal class cannot inherit SuperFinalClass because it is marked final
//class subFinal: SuperFinalClass {
//
//}


// Copying
// When a class is copied to another variable - it points to same object in memory
// When a struct is copied on other hand to another variable - both are different and it points to different object in memory.
// class is a refrence type
// struct is a value type
class CopyMe {
    var name = "CopyMe"
}
var original = CopyMe()
original.name

var copy = original
copy.name = "ChangingCopyMe"
original.name // here it is changing the original

struct Akshay {
    var name = "Akshay"
}
var a = Akshay()
a.name

var b = a
b.name = "Changing Akshay"
a.name // not changed! because it is a struct


// Deinitializers
// To clean up when object is destoryed
// structs dont have deinit
class Deinitializer {
    var name = "deinit"
    
    func greeting() {
        print("Hello \(self.name)")
    }
    deinit {
        print("I am destroyed!\n Regards,\n\(self.name)")
    }
}

for _ in 1...10 {
    print("--------------------")
    let deInit = Deinitializer()
    deInit.greeting()
}

// Mutability
// When class is created constant using let then can change variable properties
class Singer {
    var name = "Eminem"
}
 let s = Singer()
s.name = "Akshay"
s.name
