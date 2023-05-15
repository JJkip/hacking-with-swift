import UIKit

//How to handle missing data with optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites ["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}
func square(number: Int) -> Int {
    number * number
}
var number: Int? = nil
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}
/*When unwrapping optionals, it’s very common to unwrap them into a constant of the same name. This is perfectly allowable in Swift, and means we don’t need to keep naming constants unwrappedNumber or similar.*/


//How to unwrap optionals with guard
/*Like if let, guard let checks whether there is a value inside an optional, and if there is it will retrieve the value and place it into a constant of our choosing.
 
 However, the way it does so flips things around:*/
var myVar: Int? = 3
if let unwrappedmyVar = myVar {
    print("Run id myVar has a value inside")
}
func myVariable(of myVar: Int?) {
    guard let unwrappedmyVar = myVar else {
        print("Run if myVar doesn't have a value inside")
        return
    }
    print("my variable has a value")
}
myVariable(of: 5)
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) * \(number) is \(number * number)")
}
printSquare(of: 5)

//How to unwrap optionals with nil coalescing
/*Swift has a third way of unwrapping optionals? Yep! And it’s really useful, too: it’s called the nil coalescing operator and it lets us unwrap an optional and provide a default value if the optional was empty.*/
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]
let new = captains["Serenity"] ?? "N/A"
/* That will read the value from the captains dictionary and attempt to unwrap it. If the optional has a value inside it will be sent back and stored in new, but if it doesn’t then “N/A” will be used instead.
 
 This means no matter what the optional contains – a value or nil – the end result is that new will be a real string, not an optional one. That might be the string from inside the captains value, or it might be “N/A”.*/
let newX = captains["Serenity", default: "N/A"]
/*That produces exactly the same result, which might make it seem like the nil coalescing operator is pointless. However, not only does the nil coalescing operator work with dictionaries, but it works with any optionals.*/

/*The randomElement() method below on arrays returns one random item from the array, but it returns an optional because you might be calling it on an empty array. So, we can use nil coalescing to provide a default:
 
*/
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"

/*struct with an optional property, and want to provide a sensible default for when it’s missing:*/
struct Book {
    let title: String
    let author: String?
}
let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

/*It’s even useful if you create an integer from a string, where you actually get back an optional Int? because the conversion might have failed – you might have provided an invalid integer, such as “Hello”. Here we can use nil coalescing to provide a default value, like this:*/
let input = ""
let numberX = Int(input) ?? 0
print(numberX)


//How to handle multiple optionals using optional chaining
/*Optional chaining is a simplified syntax for reading optionals inside optionals.*/
let names = ["John", "Ken", "Ann"]
let chosen = names.randomElement()?.uppercased() ?? "No one"

/*we want to place books in alphabetical order based on their author names. If we break this right down, then:
-> We have an optional instance of a Book struct – we might have a book to sort, or we might not.
-> The book might have an author, or might be anonymous.
-> If it does have an author string present, it might be an empty string or have text, so we can’t always rely on the first letter being there.
-> If the first letter is there, make sure it’s uppercase so that authors with lowercase names such as bell hooks are sorted correctly.*/
struct BookX {
    let titleX: String
    let authorX: String?
}
var bookX: BookX? = nil
let authorX = bookX?.authorX?.first?.uppercased() ?? "A"
print(authorX)
