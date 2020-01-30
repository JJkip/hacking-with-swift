import UIKit

//Initializers
struct User{
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
/*var user = User(username: "twostraws")*/
var user = User()
user.username = "twostraws"

//Referring to the current instance
struct Person {
    var name: String
    
    init(name: String){
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties
struct FamilyTree{
    init() {
       print("Creating family tree")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String){
        self.name = name
    }
}
var ed = Person2(name: "Ed")
ed.familyTree

//Static properties and methods
struct Student{
    static var classSize = 0
    var name: String
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}
let edu = Student(name: "Edwin")
let yv = Student(name: "Yvonne")
print(Student.classSize)
