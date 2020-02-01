import UIKit

//Creating your own classes
class Dog1 {
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}
let poppy1 = Dog1(name: "Poppy", breed: "Poodle")

//Class inheritance
class Poodle1: Dog1{
    init(name: String) {
        super.init(name: name, breed: "German Poodle")
    }
}

//Overriding methods
class Dog {
    func makeNoise(){
        print("Woof!")
    }
}
class Poodle: Dog{
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy = Poodle()
poppy.makeNoise()

//Final Classes
final class Cat{
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}

//Copying objects
class Singer{
    var name = "Taylor Swift"
}

var singer = Singer()
print (singer.name)

var singerCopy = singer
singerCopy.name = "Justine Bieber"

print(singer.name)
/*Now try changing class to stuct*/



//Deinitializers
class Person{
    var name = "John Doe"
    
    deinit{
        print("\(name) is alive")
    }
    
    func printGreeting() {
         print("Hellow, I'm \(name)")
    }
}

for _ in 1...3{
    let person = Person()
    person.printGreeting()
}


//Mutability
class Cook {
    var name = "Mary Tai"
}
let yammy = Singer()
yammy.name = "Edsheeran Swift"
print(yammy.name)
/*Use let in the class to avoid mutability (let name .....)*/














