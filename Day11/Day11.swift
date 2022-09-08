/* ----------------------------------------------------
   ----------------------------------------------------
   Protocols, Protocol Inheritance, Extensions, Protocol Extensions
   ----------------------------------------------------
   ---------------------------------------------------- */

   // --------------------- Protocols ---------------------  //

   // Protocols are the way of descring what properties and methods something ( classes, struct and enum etc) have.

   
   protocol James {
    var Name : String { get }
    
    func Move() -> Void;
   }

   struct Boy : James{
    var Name: String = "Nice"

    func Move() -> Void{
        print("Let's Move Together.")
    }
   }
   

// Protocol lets us create blueprints of how our types share functionality, the use those blueprints in our functions to let them work on 
// a wide variety of data.

   // --------------------- Protocol Inheritance ---------------------  //

   protocol Human{
    func Walk();
   }

   protocol Person {
    var Name: String {get set}
   }

   protocol Creature : Human, Person {  }

   // Now we can make new type that conform to single protocol rather conforming individual protocols.

   // Protocol inheritance let us share definitions and reduce duplications, which is great way to build functionality piece by piece.


   // --------------------- Extensions ---------------------  //

   // Extensions allow us to add methods to the existing type, to make them do things they weren't originally designed for.
   // swift doesn't lets you to add stored properties in extension, instead you can use computed properties.
   // It is helpful for modifying types that we don't own.

   extension Int{
    var Nice : Int {
        print("I Can Do.")
        return self * self
    }

    func square () -> Int {
        return self * self
    }
   }
print(5.Nice)
print(5.square())

// --------------------- Example ---------------------  //

protocol Subh{
    func Dele();
}

class Dogi 
{
}

extension Dogi : Subh {
    func Dele() {
    print("G wagon")
    }
}

print(Dogi().Dele())

// --------------------- Protocol Extensions ---------------------  //

// Protocol extensions are like regular extensions expect that rather than extending a specific type you can extend whole protocol
// so that all conforming types get your changes.

let mySet = Set(["Johny", "Deep"])


extension Collection{
    func summerize(){
        for item in self {
            print(item, terminator: " ")
        }
    }
}

mySet.summerize()


print("// --------------------- Protocol Oriented Programming ---------------------  //")

// Protocol extensions can provide default implementations for our own protocol methods
protocol identificable{
    var Id: String {get set}
}

extension identificable{
    func PrintSomething(){
        print("Random Number \(Int.random(in: 69...91))")
    }
}

struct User : identificable{
    var Id: String
}

let u = User(Id: "Gyno")
u.PrintSomething()

