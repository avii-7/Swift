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
