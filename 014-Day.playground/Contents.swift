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