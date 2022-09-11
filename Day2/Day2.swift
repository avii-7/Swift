// Hetrogeneous Array
let ar : Any = ["String", 7, true]
// or
let br : [Any] = ["String", 7, true]
//print(ar)

//Homogeneous Array
let cr : [Bool]  = [true, false, false]
//or
let dr = [true, false]
//print(cr)

// Error becuase of let
//cr[1] = true
//print(cr)

//-----------------------------------------------------------//
var q : [Bool] = [true, false, true]
q[1] = true
//print(q)

var t: [Float] = [1,2,3]

//--------------------------------------------------------------//
// Sets: 
//*  Items aren’t stored in any order; they are stored in what is effectively a random order.
//*  No item can appear twice in a set; all items must be unique.
//*  If you try to insert a duplicate item into a set, the duplicates get ignored. 
//* Cannot access set elements via index

var er = Set(["red","green", "blue", "blue", "red"])
// or
var fr : Set<String> = ["red","green", "blue", "blue", "red"]
//print("fr: \(fr)")
//print(er)

// Error Any Set
//let gr : Set<Any> = ["red","green", "blue", "blue", 89, true]

// ---------------------------------------- -----------------------------------//

//Tuples  : but tuples hold a fixed set of things that can’t be changed, but values can be changed.
var hr = (first: "Raju", age: 25)
//print(hr)
//print(hr.0)

//Error
//hr.first = 8
//Correct ( but not in case of let)
hr.first = "Raman"
//print(hr)

// ---------------------------------------- //
//Dictionary 
// * No Particular Order

var ir = ["Avii": "No", "Mac" : "John", "Solar": "System"]
//print(ir)
// Add item
ir["JJ"] = "value"
//print(ir)

// Note: We’re need to look for values using strings, which means user["First"] will fail because we wrote “First” rather than “first”

// get All the keys
//print(Array(ir.keys))

//get all the values
//print(Array(ir.values))

// remove value by key
ir.removeValue(forKey: "Avii")
//print(ir)

//??????????????? -> Default Value for Dictionary <- ?????????????????\\

let jr : [String : String] = ["Item1": "Aaloo", "Item2": "Burger"]
let kr : String = jr["Item1", default: "Lambda"];
print(kr)


// Create Empty Collections--------------------------------------------
// Dictionaries
var lr = [String: String]()
//or
var or = Dictionary<String, String>() 

lr["Paul"] = "Jago"
//print(lr)

// Empty Array
var mr = [Int]()
//or
var pr = Array<Int>() 

mr.append(7)
mr.append(9)
//print(mr)

// Empty Set
var nr = Set<String>()
nr.insert("Red")
nr.insert("Blue")
nr.insert("Blue")
//print(nr)

//-----------------------------\\
//Enums
enum Result{
    case Sucess
    case Failure
    case Wow
}
//print(Result.Wow)

//Enum Associate Value
enum Activity{
    case bored
    case Running(direction : String)
    case Flying(where : String, amount : Int)
}

//print(Activity.Flying(where: "Haryana"))

// Enuom with type
enum Data : Int{
    case R = 7
    case S
    case t
}
print(Activity.Running(direction: "String"))

print("// --------------------- Access Modifiers ---------------------  //")

// fileprivate -> this means code can be access only in same file
// internal -> if you ship your code as the library or framework to use for others, they won't access that member.