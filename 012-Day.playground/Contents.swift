import UIKit

//Handling missing data
/*To make a type optional, add a question mark after it.*/
var age: Int? = nil
/*That doesn’t hold any number – it holds nothing. But if we later learn that age, we can use it:*/
age = 38

//nwrapping optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name")
}
