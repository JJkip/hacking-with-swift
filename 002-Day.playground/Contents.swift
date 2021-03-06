import UIKit

//Arrays
let john = "John Lennon"
let paul = "Paul McCarthy"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[2]

//Sets
let colors = Set(["red","green","blue"])

let colors2 = Set(["red","green","blue","red","blue"])

//Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

//Arrays vs sets vs tuples
/*If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple*/
let address = (house: 555, street: "Taylor swift Avenue", city: "Nashville")

/*f you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set*/
let set = Set(["aardvark","astronant","azala"])

/*If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array*/
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Dictionaries
/*Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want*/
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

//Creating empty collections
/*empty dictionary*/
var teams = [String: String]()
teams["Paul"] = "Red"
/*empty array*/
var results = [Int]()
/*empty set*/
var words = Set<String>()
var numbers = Set <Int>()
/*arrays and dictionaries with similar syntax*/
var scores = Dictionary<String,Init>()
var results = Array<Int>()

//Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

//Enum associated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity2.talking(topic: "football")

//Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case eatth
    case mars
}
let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
