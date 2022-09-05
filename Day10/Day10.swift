/* ----------------------------------------------------
   ----------------------------------------------------
   Classes, inheritance, overriding methods, final, copying objects, deinitializers, Mutability
   ----------------------------------------------------
   ---------------------------------------------------- */

   // 1. Classes Must Have Their Own Initializer, without code cannot be compile
   // 2. Variable properties in constant classes can be modified, but in struct cannot.
   // 3. Classses have deinitializers, which are methods that are called when instance of class is destroyed
   
   class Person {
    var Name: String
    var isMale: Bool
    
    init(Name: String, isMale: Bool) {
     self.Name = Name
     self.isMale = isMale   
    }
   }

   let x = Person(Name: "Raju", isMale: true)
   print(x.Name)
   x.Name = "GOCI"
   print(x.Name)
   

   // --------------------- Inheritance ---------------------  //

   
   class Dog {
    var Name: String
    var Breed: String
    var isMale : Bool
    
    init(Name: String, Breed: String, isMale: Bool) {
        self.Name = Name
        self.Breed = Breed
        self.isMale = isMale
    }    
   }

   class Husky : Dog{
    init(Name: String, isMale: Bool) {
        super.init(Name: Name, Breed: "Husky", isMale: isMale)
    }
   }

   let myHusky = Husky(Name: "Oreo", isMale: true)
   print("Name: \(myHusky.Name)", "Breed: \(myHusky.Breed)", "Gender: \(myHusky.isMale ? "Male" : "Female")" ,separator: "\n")
   
   // --------------------- Practice Example ---------------------  //

   class Drink {
    var Name: String
    init(Name: String){
        self.Name = Name
    }
}

class Mojito: Drink {

}

let d = Mojito(Name: "Nice")
print(d.Name)

// Conclusion -> If Child Class Doesn't have properties, then there will be no initializer, then while creating object of child class
// if will call Parent class initializer, so you have to call parent initializer with properties name.

// --------------------- Example 2 ---------------------  //
/*
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
*/

// error: 'super.init' isn't called on all paths before returning from initializer
// Conclusion: Properties have no default values in Swift, you must initialize each and every Property

print("// --------------------- Overriding Methods ---------------------  //")

class Creature{
    var isMale: Bool

    func Move(){
        print("Move")
    }
    
    init(isMale: Bool) {
        self.isMale = isMale
    }
}

class Human: Creature{
    override func Move() {
        print("Walk")
    }
}

let Raju = Human(isMale: true)
Raju.Move()

// Here swift is calling Parent class initializer, if we create our own initializer in child class with same signature, it will ask you 
// to use override keyword with child class initializer

// --------------------- Note ---------------------  //

// Parent class and child class cannot have same name function or either child class have to use override keyword

// --------------------- Final Keyword ---------------------  //

// Sometimes you don't want to allow your class to be inherited by anyone, this means 2nd user needs to use your class the way it is written
// now they cannot add functionality to your class

// Error 

/*
final class Goku{
    var Name: String
    func Run() {
        print("Let's run together")
    }
    init(Name: String) {
        self.Name = Name
    }
    
}

class SuperSaiyan: Goku{
    
    init() {
        super.init(Name: "Raju")
    }
    
}
*/

// --------------------- Copying Objects ---------------------  //

// Copying objects behave differently in cases of structs as compared to classes

// in case of struct when we assign object to new variable, new variable will hold a whole new copy of object,
// changing in new variable won't effect old variable.

struct Man{
    var Name: String = "Raju"
}

var Chaman = Man()
Chaman.Name =  "Chaman"
print("Chaman Name: \(Chaman.Name)")

var Taman = Chaman
print("Copied Taman Name: \(Taman.Name)")
Taman.Name = "Taman"
print("Taman New Name: \(Taman.Name)")

print("Chaman Name Again: \(Chaman.Name)")

// --------------------- Note ---------------------  //

// Struct are value type,
// classes are refrence type

// --------------------- Deinitializers ---------------------  //

// Deinitializers will run automatically when the class instance is destroyed.

class DeinitExample {
    var Name: String = "Romeo"

    func Move(){
        print("Let's move together.")
    }
    
    deinit {
        print("\(Name) is Died Now.")
    }
}

if(true){
    let ex = DeinitExample()
    ex.Move()
}

// --------------------- Mutability ---------------------  //

// Properties of struct can't be modified if struct is declared as constant, but in case of class you can change value of properties
// because classes point to some date in memory while struct is like a one value such as number 6.

// --------------------- Note ---------------------  //
var number: Int = 5
number = 6

// we can't simply change constant value (Number: 5) to be number 6.
// instead code remove the number 5 and assign new value number 6
// that how swift works, when we change properties, swift changed the entire struct
// that's how struct is treated from prespective.

// so if changing one part of struct it means destroying and recreating the entire struct.
// so that's why according to fundamentals you will see why constant properties do not change.