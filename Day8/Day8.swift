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

   // --------------------- Differences ---------------------  //
// Struct vs Tuple
// func authenticate(_ user: User) { ... }
// vs
// func authenticate(_ user: (name: String, age: Int, city: String)) { ... }

// Think about how hard it would be to add a new property to your User struct (very easy indeed), compared to how hard it would be to add another value to your tuple everywhere it was used? (Very hard, and error-prone!)
   