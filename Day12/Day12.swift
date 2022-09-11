/* ----------------------------------------------------
   ----------------------------------------------------
   Handling Missing Data, Unwrap optionals, guard let, forece unwrap, IUO's
   Nil coalescing, Optional Chaining
   ----------------------------------------------------
   ---------------------------------------------------- */

   // --------------------- Optionals ---------------------  //

   // Their core job is simple: they allow us to represent the absence of some data 
   // Any data type can be optional in Swift.
   // A datatype can't be null without optionals.

   var x : Int? = 5
   if let y = x {
        print(y)
    }

    struct user {
        var Name: String
    }
    let us: user? = nil
   
   // --------------------- Unwraping optionals ---------------------  //
   // It is a syntax that allow you to safely unwrap the optionals.
   // Swift won’t let us use optionals without unwrapping them first. 
   // This provides a huge amount of protection for all our apps, because it puts a stop to uncertainty:

   var s: String?;

   if let _ = s {
    print("It has value.")
   }
   else{
    print("It has no value at all.")
   }

   print("// --------------------- guard let ---------------------  //")

   func UseGuardLet(_ name: String?){
    guard let name = name else {
        print("I'm returning")
        return
    }
    print("Nice \(name)")
   }

   UseGuardLet("Avii")

   print("// --------------------- Force Unwrap ---------------------  //")

   // This will make ' con ' as optional int because you might tried to convert non-interger string to int which is not possible in that case it will returns nil.

   let num : String = "5"
   let con = Int(num)

   if let con = con{
    print(con)
   }
   else{
    print("nil value") 
   }

   // But when you are sure there will be a value you can force to convert it by using '!' at then end of expression, then ' con ' will be of non-nullable type.
   // but note that if it is unable to convert the value, your application will be crash.

    let num2: String = "5"
    //let num3: String = "5u"
    let con2 = Int(num2)!

    print("Force unwrap value \(con2)")
    
    // As a result, you should force unwrap only when you’re sure it’s safe – there’s a reason it’s often called the crash operator.

    print("// --------------------- When to use Force unwrap ---------------------  //")

    // Example-1: 
    let u = Int8("5")!

    // That is a handtyped string and it's correct and we are happy to unwarap optionals here because it can't give suprise to us ( by crashing )

    // Example - 2
    // when you use string interpolation, this isn't safe, when you give
    let z = "1"
    let y : Int = Int(z)!

    // ------------------------------------------  //
    
    var pp = [5, 57,5].randomElement()!
    print("Value \(pp)")
    
    
    
    // randomElement() returns an optional value because it’s possible the range or array we’re using it with was empty, in that case it returns nil
    // here we are using handtyped array so i know definately a number coming back
    // that’s the key here: you should never force unwrap something that won’t succeed 100% of the time. That’s it – that’s the entire rule.

    print("// --------------------- Implicitly Unwrapper Optionals  ---------------------  //")

    // IUO's are crated using '!' sign after type

    var Jockey : String! = "9"


    /* The primary reason for IUOs is for use with Apple’s older UIKit user interface framework.
     If you wanted an image in your layout you’d need to create a property for it, 
     but that image wouldn’t be created immediately – UIKit has a performance optimization that means the image is only created when
     that piece of user interface is actually shown. Apple pushes back the work of creating the image until it’s actually needed,
     like a lazy Swift property, but in practice it means the variable starts as nil then gets set to an image as soon as it’s needed, at which point we can start using it.

      Yes, these could have been written using regular optionals,
      but it would have been annoying to have to unwrap them safely all the time when we know they must exist. 
      In the SwiftUI world this whole use case goes away, so IUOs are much less important. */

      // --------------------- Nil coalescing ---------------------  //

      // Nil coalescing is operator that unwraps optionals if there is value inside if it has nil then use the default value

        let sid:String? = nil // "Sudhanshu"
        let userr = sid ?? "Sad"
        print("My Name is: \(userr)")

        // we can also chain nil coalescing like this
        // let name = getFirstName() ?? getSecondName() ?? ""

        // It can be used with dictionary like this

        let use:[String: String] = ["Avii": "Arun", "Sid" : "Sudhanshu", "Gops": "Gopal"]

        print("------- Way 1 ---------")
        print("Nice Name: \(use["Avii", default: "8"])")
        print("------- Way2 ----------")
        print("Nice Name: \(use["Sid"] ?? "Sud")")


        // --------------------- Optional Chaining ---------------------  //
        

        // It is a shortcut, when chaining optionals you can unwrap with single question mark.
        // Optional chaining let's you check for nil if it has value chaining will be continue if not then 
        // left hand side variable will be assign to nil

        let arr = ["Game", "Changer", "Desi", "Crew"]
        let lucky: String = arr.first?.uppercased() ?? "Jim"
        print("Lucky Value \(lucky)")
        
        // why optional chaining is so important - great example
        let dicti: [String: String] = ["-1": "uuu", "ONE": "one"]

        print("Nice value: \(dicti["-1"]?.first?.uppercased() ?? "Nice")")
        
        let favoriteColors = ["Paul": "Red", "Charlotte": "Pink"]
        let charlotteColor = favoriteColors["Charlotte"]?.lowercased()

        print("// --------------------- Optional Try ---------------------  //")

        // Normal Error Throwing Function

        enum NiceError : Error {
            case letMeThrow
        }

        func GetError(Miz : Bool) throws -> Bool{
            if Miz {
                return Miz
            }
            throw NiceError.letMeThrow
        }

        do {
            let _: Bool = try GetError(Miz: false)
        } catch {
            print("You got error's")
        }
        
        print("// --------------------- try? ---------------------  //")

        func TryOptional(Miz : Bool) throws -> Bool? {
            if Miz {
                return Miz
            }
            return nil
        }

        
        if let resu = try? TryOptional(Miz: false){    
            print("Chill.... Try Optional Working Fine.\(resu)")
        }
        else{
            print("Oops Try Optional")
        }

        print("// --------------------- try! ---------------------  //")

        // When you know your function definately have a value rather than nil else your code crash

         func TryUnwrap(Miz : Bool) throws -> Bool? {
            if Miz {
                return Miz
            }
            return nil
        }

        
        if let rtt = try! TryUnwrap(Miz: false){    
            print("Chill.... Try Unwrap Working Fine.\(rtt)")
        }
        else{
            print("Oops Try Unwrap")
        }
        
        print("// --------------------- Failable Initializer ---------------------  //")
        // An initializer that might work or not, if you realise that you cannot create instance using the data you provided,
        // you will return an optional instance whose value set to nil

        struct Demon{
            var Id: String
            init?(bond: Bool){
                if(bond){
                    Id = "Nice Id"
                }
                else{
                    return nil
                }
            }
        }

        if let joy = Demon(bond: true){
            print("Unwrapping Sucess Id \(joy.Id)")
        }
        else {
            print("Unsucess")
        }
        
    print("// --------------------- TypeCasting ---------------------  //")

    class Animal {
        var Name: String
        
        init() {
            Name = "Nimo"
        }
    }

    class Dog : Animal{
        func makeNoise(){
            print("Woof")
        }
    }

    class Fish : Animal {}    

    let pets = [Dog(), Fish(), Dog(), Fish()]
    
    for item in pets {
       if let pet = item as? Dog{
        pet.makeNoise()
       }
    }

print("// --------------------- New Thing ---------------------  //")

// Optionals can be implemented using build in enum values
// 1. .none
// 2. .some 

let string: String? = "nil"

switch string {
case .none:
    print("Nil value")
case .some:
    print("Some Value")
}


