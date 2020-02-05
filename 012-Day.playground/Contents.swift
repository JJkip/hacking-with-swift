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
