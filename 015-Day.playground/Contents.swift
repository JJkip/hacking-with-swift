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
