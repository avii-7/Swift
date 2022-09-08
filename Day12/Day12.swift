/* ----------------------------------------------------
   ----------------------------------------------------
   Handling Missing Data, Unwrap optionals, guard let, forece unwrap
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

   // This will make ' con '' as optional int because you might tried to convert non-interger string to int which is not possible in that case it will returns nil.

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
    let z = "90"
    let y : Int8 = Int("\(z))")!

    // ------------------------------------------  //
    
    [5, 57,5].randomElement()
    // randomElement() returns an optional value because it’s possible the range or array we’re using it with was empty, in that case it returns nil
    // here we are using handtyped array so i know definately a number coming back
    // that’s the key here: you should never force unwrap something that won’t succeed 100% of the time. That’s it – that’s the entire rule.


   
   