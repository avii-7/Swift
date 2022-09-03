/* ----------------------------------------------------
   ----------------------------------------------------
   Structs
   ----------------------------------------------------
   ---------------------------------------------------- */

   // --------------------- Creating Structs ---------------------  //

   struct Sports{
    var name: String
    let rol: String
   }

   let tennis: Sports = Sports(name: "Jaspal", rol: "77")
   print(tennis.name, tennis.rol, separator: "\n")

   // --------------------- Computed Property  ---------------------  //   
   // A property that runs code to figure out its value.

   struct Computed{
      var go: String
      var yahoo: Bool {
         return go == "Yes"
      }
   }

   let s2 = Computed(go: "String")
   print(s2.yahoo)
   

   // --------------------- Property observers ---------------------  //
   // It let you run code before or after any property changes.
  // willset => Take action before property Change
  // didset => Take action after property change
  // Property observers won't run in initial Property Set

  print("Property Observers Started")
   struct Gyro {
      let ninja: Bool
      var gori : Bool {
         willSet{
            print("before")
         }
         didSet {
            print("after")
         }
      }
   }
   var s3 = Gyro(ninja: true, gori: false)
   //s3.gori = true
   print("Property Observers Ended")
   


   // --------------------- Differences ---------------------  //
// Struct vs Tuple
// func authenticate(_ user: User) { ... }
// vs
// func authenticate(_ user: (name: String, age: Int, city: String)) { ... }

// Think about how hard it would be to add a new property to your User struct (very easy indeed), compared to how hard it would be to add another value to your tuple everywhere it was used? (Very hard, and error-prone!)

// --------------------- Mutating Methods ---------------------  //

struct s1{
   var a: Int
  mutating func la() -> Void{
      print("Nice")
      a = 6
   }
}
/* ----------------------------------------------------
   ----------------------------------------------------
   If a struct has a variable property but the instance of the struct was created as a constant, that property can’t be changed – 
   the struct is constant, so all its properties are also constant regardless of how they were created.
   ----------------------------------------------------
   ---------------------------------------------------- */
   var topac = s1(a: 5)
   topac.la()
   print(topac.a)

   let tt = s1(a: 44)
   print(tt.a)
   // Error
   // tt.a = 5

   // --------------------- Strings ---------------------  // 
   // => You can't read strings as str[5] becuase strings behave differently in swift because of emoji's (or similar complex characters)
   // (One emoji is made of many special words) like ( medium skintone woman skaing hands dark skintone woman )
   //  so every letter in string can't take similar space in memory, so if you are accessing letters of ' US Flag ' Emoji, it will return 'U' which
   // wouldn't make sence becuase it is special letter and won't be render as emoji,
   // but every element in array take similar space, so it is easy for acessing individual elements in array  
   
   let str = "Johny"

   // Use this
   if str.isEmpty {   }
   // Not this
   if(str.count > 0) {   }
