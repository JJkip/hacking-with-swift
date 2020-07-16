import UIKit


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

//Static properties and methods
struct TaylorFan{
    static var favoriteSong = "Look what you made me do!"
    
    var name: String
    var age: Int
}

let fanB = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
print(fanB.age)
print(TaylorFan.favoriteSong + fanB.name)

