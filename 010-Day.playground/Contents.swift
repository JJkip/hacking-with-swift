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
