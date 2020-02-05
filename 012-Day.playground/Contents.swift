import UIKit

//Handling missing data
/*To make a type optional, add a question mark after it.*/
var age: Int? = nil
/*That doesn’t hold any number – it holds nothing. But if we later learn that age, we can use it:*/
age = 38

//unwrapping optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name")
}

//Unwrapping with guard
func greet(_ name: String?){
    guard let unwrapped = name else {
        print("You didn't provide a name")
        return
    }
    print ("Hello, \(unwrapped)!")
}

//Force unwrapping
let str = "5"
let num = Int(str)
/*Even though Swift isn’t sure the conversion will work, you can see the code is safe so you can force unwrap the result by writing ! after Int(str), like this:*/
let num2 = Int(str)!
/*Swift will immediately unwrap the optional and make num a regular Int rather than an Int?. But if you’re wrong – if str was something that couldn’t be converted to an integer – your code will crash.
As a result, you should force unwrap only when you’re sure it’s safe – there’s a reason it’s often called the crash operator.*/

//Implicitly unwrapped optionals
/**/
let age2: Int! = nil
/*Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are nil – your code crashes.*/

//Nil coalescing
/*The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a value – if the optional was nil – then a default value is used instead. Either way, the result won’t be optional: it will either by the value from inside the optional or the default value used as a back up.*/
/*Here’s a function that accepts an integer as its only parameter and returns an optional string:*/
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"
/*That will check the result that comes back from the username() function: if it’s a string then it will be unwrapped and placed into user, but if it has nil inside then “Anonymous” will be used instead.*/

//Optional chaining
let names = ["John","Paul","George","Ringo"]

let beatle = names.first?.uppercased()
/*That question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.*/

//Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
if let result = try? checkPassword("password"){
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

//Failable initializers
struct Person {
    var id: String
    
    init?(id: String){
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//Typecasting
class Animal {}
class Finsh: Animal {}
class Dog: Animal {
    func makeNoice() {
        print("Woof")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
