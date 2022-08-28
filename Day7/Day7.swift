/* ----------------------------------------------------
   ----------------------------------------------------
   Day 7
   ----------------------------------------------------
   ---------------------------------------------------- */

   // --------------------- Closer Accept Parameters ---------------------  //

   func closer1(action: (String)-> Void)
   {
    print("Before Running Closure.")
    action("Wow")
    print("After Running Closure.")
   }

   closer1 { (Great: String) in
    print("Inside Closure \(Great)")
   }

   // --------------------- Using closures as parameters when they return values ---------------------  //

   
   func closer2(action: (String) -> String) {
      print("Before.");
      let value = action("Nice")
      print("After \(value)")
   }
   
   closer2(){ (val : String) in
      "nice"
   }


   /* ----------------------------------------------------
      ----------------------------------------------------
      Nice Concept
      ----------------------------------------------------
      ---------------------------------------------------- */

      func reduce(arr numbers: [Int], action: (Int, Int) -> Int) -> Int{
         var current = numbers[0]
         
         for item in numbers[1...] {
            current = action(current, item)
         }
         return current
      }

   // Normal Synatax
      let value = reduce(arr: [7, 1, 9, 10]) { (c: Int, a: Int) -> Int in
         c + a
      }

// one more way 
let value2: Int = reduce(arr: [10, 10, 10]){
   c, a -> Int in c+a
}

// one more way

   // Advance Syntax   
   let value4 = reduce(arr: [7, 1, 9, 10], action: +)

   //

      print(value2)


      //new way
      // no need to specify datatype of parameter
      // * event no paramters names needed, no need to specify return data type as aleady did in accepting funciton 
      // let value3 = red(){
      //    "This is string \($0) \($1)"
      // }

      // shorthand parameters are only used in closures

      // We don't use parameter names when calling a closure.

      // --------------------- Returning Closures From Functions ---------------------  //
      
      func closure() -> (String) -> String{
         return{
            "sucess \($0) is here."
         }
      }

      let funcc = closure()
      let val2 = funcc("Nice")
      print(val2)

      // --------------------- Capturing values ---------------------  //
      // One of the most important features of Swift’s closures is that they capture values they use. 

      func closer3() -> (String) -> Void{
         var counter = 1;
         return {
            print("\(counter). \($0) is Beautiful")
            counter += 1
         }
      }

      let result = closer3()
      result("London")
      result("London")
      result("London")


      // --------------------- Example ---------------------  //

      func getRandomNumberGenerator() -> () -> Int{
         var previousValue = 0;
         return{
            var newValue:Int
             repeat {
               newValue = Int.random(in: 1...3)
             } while newValue == previousValue

             previousValue = newValue
             return newValue
         }
      }

      let result4 = getRandomNumberGenerator()

      for _ in 1...5 {
         print(result4())
      }


      var x = 4 > 4.5
      print(x)
      