import UIKit

//Functions
func favouriteAlbum() {
    print("My favorite is Fearless")
}
favouriteAlbum()

func favouriteAlbumA(name: String){
    print("My favourite is \(name)")
}
favouriteAlbumA(name: "Frearless")

func printAlbumRelease(name: String, year: Int){
    print("\(name) was released in \(year)")
}
printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

//External and internal parameter names
func countLettersInString(string: String){
    print("The string \(string) has \(string.count) letters")
}
countLettersInString(string: "Hello")

func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString(myString: "Hello")

func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("Hello")

func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}
countLetters(in: "Hello")

//Return values
func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}
if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

//Optionals
func getHaterStatus() -> String {
    return "Hate"
}
func getHaterStatus() -> String? {
    return "Hate"
}
func getHaterStatus(weather: String) -> String?{
    if weather == "sunny"{
        return nil
    } else {
        return "Hate"
    }
}
var status: String?
status = getHaterStatus(weather: "rainy")
func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let unwrappedStatus = status {
    // unwrappedStatus contains a non-optional value!
} else {
    // in case you want an else block, here you go…
}

func getHaterStatusX(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

func takeHaterActionX(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatusX(weather: "rainy") {
    takeHaterActionX(status: haterStatus)
}

func yearAlbumReleased(name: String) -> Int {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return 0
}
func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}
var items = ["James", "John", "Sally"]
func position(of string: String, in array: [String]) -> Int {
    for i in 0 ..< array.count {
        if array[i] == string {
            return i
        }
    }

    return 0
}

//Force unwrapping optionals
func yearAlbumReleasedX(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleasedX(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year)")
}
//Implicitly unwrapped optionals
/*

 A regular variable must contain a value. Example: String must contain a string, even if that string is empty, i.e. "". It cannot be nil.
 An optional variable might contain a value, or might not. It must be unwrapped before it is used. Example: String? might contain a string, or it might contain nil. The only way to find out is to unwrap it.
 An implicitly unwrapped optional might contain a value, or might not. But it does not need to be unwrapped before it is used. Swift won't check for you, so you need to be extra careful. Example: String! might contain a string, or it might contain nil – and it's down to you to use it appropriately. It’s like a regular optional, but Swift lets you access the value directly without the unwrapping safety. If you try to do it, it means you know there’s a value there – but if you’re wrong your app will crash.

 */

//Optional chaining
func albumReleasedZ(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let albumA = albumReleasedZ(year: 2006)
print("The album is \(albumA)")
let str = "Hello world"
print(str.uppercased())
let albumB = albumReleasedZ(year: 2006)?.uppercased()
print("The album is \(albumB)")
/*let albumC = albumReleasedZ(year: 2006)?.someOptionalValue?.someOtherOptionalValue?.whatever*/
//The nil coalescing operator
let albumD = albumReleasedZ(year: 2006) ?? "unknown"
print("The album is \(albumD)")


//Enumerations

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
func getHaterStatusZ(weather: WeatherType) -> String?{
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud:
        return "dislike"
    case .rain:
        return "Hate"
    default:
        return "no input"
    }
}

getHaterStatusZ(weather: .cloud)
getHaterStatusZ(weather: WeatherType.wind(speed: 5))

//Structs
struct Person{
    var clothes: String
    var shoes: String
    //Functions inside structs
    func describe(){
        print("i like wearing \(clothes) with \(shoes)")
    }
}

var taylor = Person(clothes: "T-shirts", shoes: "Sneakers")
var other = Person(clothes: "Short skirts", shoes: "High heals")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

//Classes

class PersonX {
    var clothes: String
    var shoes: String
    
    init(xclothes: String, xshoes: String){
        self.clothes = xclothes
        self.shoes = xshoes
    }
}

class Singer{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing(){
        print("La la la la")
    }
}

class CountrySinger: Singer{
    override func sing(){
        print("Trucks, guitars, and liquor")
    }
}

class HeavyMetalSinger: Singer{
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrr rargh rargh rarrrrrgh")
    }
}
var taylorY = Singer(name: "Taylor", age: 25)
var taylorX = CountrySinger(name: "Country Taylor", age: 30)
var taylorZ = HeavyMetalSinger(name: "Taylor Heavy", age: 40, noiseLevel: 100)
taylorY.name
taylorY.age
taylorY.sing()
taylorX.sing()
taylorZ.sing()


//Properties and property oberservers
struct PersonA {
    var clothes: String{
        willSet{
            updateUI(msg: "I'm changeing from \(clothes) to \(newValue)")
        }
        didSet{
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String){
    print(msg)
}

var taylorA = PersonA(clothes: "T-shirt")
taylorA.clothes = "short skirts"

//Computed properties
struct PersonB{
    var age: Int
    var ageInDogyears: Int{
        get{
            return age * 7
        }
    }
}

var fan = PersonB(age: 25)
print(fan.ageInDogyears)
