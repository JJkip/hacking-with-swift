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



//How to create your own classes
class Game {
    var score = 0 {
        didSet {
            print("score is now \(score)")
        }
    }
}
var newGame = Game()
newGame.score += 10

//How to make one class inherit from another
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours =  hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let omondi = Developer(hours: 8)
let jano = Manager(hours: 10)

omondi.work()
jano.work()
omondi.printSummary()
jano.printSummary()

//How to add initializers for classes
class Vehicle {
    let isElectic: Bool
    init(isElectric: Bool) {
        self.isElectic = isElectric
    }
}

class Car: Vehicle {
    let isConvertable: Bool
    init(isElectric: Bool, isConvertable: Bool) {
        self.isConvertable = isConvertable
        super.init(isElectric: isElectric)
    }
}
let teslaX = Car(isElectric: true, isConvertable: false)
