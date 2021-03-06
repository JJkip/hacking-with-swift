import UIKit

//Variables and constants
var str = "Hello, playground"
var name = "Jay Langat"
name = "Arap"
let namex = "Constant"

//Types of Data
var nameY: String
nameY = "JKL"

var age: Int
/*nameY = 32*/
/*nameY = "Thirty Two"*/

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

var nameS: String = "JayJay Langat Arap"

//Operators
var q = 10
q = q + 1
q = q - 1
q = q * q

var r = 10
r += 10
r -= 10

var a = 1.1
var b = 2.2
var c = a + b

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

c > 3
c >= 3
c > 4
c < 4

var nameD = "Tim McGraw"
nameD == "Tim McGraw"

var stayOutTooLateX = true
stayOutTooLateX
!stayOutTooLateX

var nameZ = "Tim McGraw"
nameY == "Tim McGraw"
nameY != "Tim McGraw"

//String interpolation
var first_name = "Joy"
"Your first name is \(first_name)"
"Your fisrt name is " + first_name
var ageD = 20
var address = "Jamuhuri"
var latitudeD = 36.16667
"Your name is \(first_name), your age is \(ageD), and your residential address is \(address) at \(latitudeD)"
"You are \(ageD) years old. In another \(ageD) years you will be \(ageD * 2)"

//Arrays
var evenNumbers = [2,4,6,8]
var songs =  ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]
type(of: songs)

var songsMix: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
/*That uses a type annotation to make it clear we want an array of strings, and it assigns an empty array (that's the [] part) to it.*/
var songsEmpty: [String] = []
/*That means the same thing: the () tells Swift we want to create the array in question, which is then assigned to songs using type inference. This option is two characters shorter*/
var songsAnotherWay = [String]()

var all_Songs = songs + songsMix
all_Songs += ["Everything has Changed"]

//Dictionaries
var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

//Conditional statements
var action: String
var person_char = "lover"
if person_char == "lover" {
    action = "WOW"
} else if person_char == "player" {
    action = "play"
} else {
    action = "cruise"
}
/*Evaluating multiple conditions*/
var actionR: String
var stayOutTooLateR = true
var nothingInBrainR = true

if stayOutTooLateR && nothingInBrainR {
    actionR = "cruise"
}
/*Looking for the opposite of truth*/
if !stayOutTooLateR && !nothingInBrainR {
    action = "cruise"
}
//Loops
print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

for i in 1...10 {
    print("\(i) x 10 os \(i * 10)")
}

var strH = "Don lie"
for _ in 1...5 {
    strH += "Please"
}
print(str)

//Looping over arrays
var songsX = ["Shake it off","You belong with me","Look what you made me do"]

for song in songsX {
    print("My favourite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ... 3 {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count{
    print("\(people[i]) gonna \(actions[i])")
}

//Inner loops
for i in 0 ..< people.count{
    var strA = "\(people[i]) gonna"
    
    for _ in 1 ..< actions.count+2 {
        strA += " \(actions[i])"
    }
    print(strA)
}

//While loops
var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 10 {
        break
    }
}

var songsO = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songsO {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

//Switch case
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}
