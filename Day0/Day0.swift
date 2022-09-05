struct circle{
    var isNyc : Bool
    var rad : String{
        
        get { return isNyc ? "Yes" : "No" }
        
        set (newValue){
            isNyc = false
        }
        
    }
}


var Jov = circle(isNyc: true)
print(Jov.rad)
Jov.rad = "bab"
print(Jov.rad)


class Drink {
    var Name: String
    init(Name: String){
        self.Name = Name
    }
}

class Mojito: Drink {
    var alcoholPercentage: Int
    init(ap: Int){
        alcoholPercentage = ap
    }
}

let d = Mojito(ap: 80)
print(d.Name)


