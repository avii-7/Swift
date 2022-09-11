/* ----------------------------------------------------
   ----------------------------------------------------
   Initializers
   ----------------------------------------------------
   ---------------------------------------------------- */

   // All structs comes with one initializer by default, called memberwise initializer - this asks you to 
   // provide a value for each property when you create the struct

   // We can provide our own initializers to replace the default one, But you need to make sure all properties have a value before initializers ends.


   struct User {
    var Name: String
    var jo : Bool

    init(y: Bool) {
        Name = "Hi"
        jo = y
        print("Values is set now")
    }
   }

   let x = User(y: true)

   // --------------------- 2 ---------------------  //

    // if you provide your own initializer, then you can't rely on memeberwise initializers

    struct People {
        var Name: String
        
        init(){
            print("Own Initializer")
            Name = "Joy"
        }
    }

    // let p = People(Name: "Nice")

    // if swift lefts its default memberwise initializers in place, it might be missing some important work that we put it in our own initializer
    // if you want to stay move your custom initializers into an extension like this: 

    struct Person{
        var Name: String
        var Gender: Bool
    }
    extension Person{
        
        init() {
            Name = "Anonymomous"
            Gender = true
        }
    }

    // default initilizaiton
    let person = Person();
    print("Default init \(person.Name)")

    // Custom Initialization
    let person2 = Person(Name: "Raju", Gender: true)
    print("Custom init \(person2.Name)")
    
    // --------------------- self ---------------------  //

    // self is used to refer to the current instance of struct, when your parameter name is same as property in own initializer Method


    // --------------------- lazy ---------------------  //

    // swift lets you to create some properties only when they are needed, using lazy keyword
    // unlike computed property they store the result, so that subsequent access to the property won't redo the work

    // EX
    struct SlowGuy{
        var n : Int = 1
        init() {
            n += 1
            print("Very Slow Guy \(n)")
        }
    }

    struct lazyGuy{
        var Name : String
        lazy var Guys = SlowGuy()
        
        init() {
            Name = "Koka"
        }
    }

    // Here SlowGuy own initilization runs only one time
    var Guy = lazyGuy()
    var x1 = Guy.Guys
    var y1 = Guy.Guys
    var z1 = Guy.Guys
    //  you need to access the property at least once to print message "Very Slow Guy"

print("// --------------------- Static Property ---------------------  //");

// You can share specific properties and methods across all the instances of struct by declaring them as static
// you can't use static methods to change non-static properties


struct Human {
    static var EarthSize : Int = 0
    var Name: String
    
    init(Name : String) {
        self.Name = Name
        Human.EarthSize += 1;
    }
}

let h1 = Human(Name: "Raju")
let h2 = Human(Name: "Jennifer")
print(Human.EarthSize)
