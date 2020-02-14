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
