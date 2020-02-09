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

