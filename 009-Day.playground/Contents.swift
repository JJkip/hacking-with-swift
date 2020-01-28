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
