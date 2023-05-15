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


//How to handle function failure with optionals
/*When we call a function that might throw errors, we either call it using try and handle errors appropriately, or if we’re certain the function will not fail we use try! and accept that if we were wrong our code will crash. (Spoiler: you should use try! very rarely.)
 
 However, there is an alternative: if all we care about is whether the function succeeded or failed, we can use an optional try to have the function return an optional value. If the function ran without throwing any errors then the optional will contain the return value, but if any error was thrown the function will return nil. This means we don’t get to know exactly what error was thrown, but often that’s fine – we might just care if the function worked or not.

 Here’s how it looks:*/
enum UserError: Error {
    case badID, networkFailed
}
func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
/*The getUser() function will always throw a networkFailed error, which is fine for our testing purposes, but we don’t actually care what error was thrown – all we care about is whether the call sent back a user or not.
 
 This is where try? helps: it makes getUser() return an optional string, which will be nil if any errors are thrown. If you want to know exactly what error happened then this approach won’t be useful, but a lot of the time we just don’t care.

 If you want, you can combine try? with nil coalescing, which means “attempt to get the return value from this function, but if it fails use this default value instead.”

 Be careful, though: you need to add some parentheses before nil coalescing so that Swift understands exactly what you mean. For example, you’d write this:*/
let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

/*You’ll find try? is mainly used in three places:
 
 In combination with guard let to exit the current function if the try? call returns nil.
 In combination with nil coalescing to attempt something or provide a default value on failure.
 When calling any throwing function without a return value, when you genuinely don’t care if it succeeded or not – maybe you’re writing to a log file or sending analytics to a server, for example.*/

//SUMMARY
/*Optionals let us represent the absence of data, which means we’re able to say “this integer has no value” – that’s different from a fixed number such as 0.
 As a result, everything that isn’t optional definitely has a value inside, even if that’s just an empty string.
 Unwrapping an optional is the process of looking inside a box to see what it contains: if there’s a value inside it’s sent back for use, otherwise there will be nil inside.
 We can use if let to run some code if the optional has a value, or guard let to run some code if the optional doesn’t have a value – but with guard we must always exit the function afterwards.
 The nil coalescing operator, ??, unwraps and returns an optional’s value, or uses a default value instead.
 Optional chaining lets us read an optional inside another optional with a convenient syntax.
 If a function might throw errors, you can convert it into an optional using try? – you’ll either get back the function’s return value, or nil if an error is thrown.
 Optionals are second only to closures when it comes to language features folks struggle to learn, but I promise after a few months you’ll wonder how you could live without them!*/
