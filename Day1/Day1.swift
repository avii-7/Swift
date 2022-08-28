print("Day 1")

// MultiLine String
var x = """
Hello / Hi Sir i88
"""
//Swift is very particular about how you write those quote marks: the opening and closing triple must be on their own line, but opening and closing line breaks won’t be included 
//in your final string.
//print(x)

// Double and Integers
var z = 5
var y = 5.0
//Error : cannot convert value of type 'Double' to expected argument type 'Int'
//z += y;
//print(z)

// String Interpolation
var  score = 5;
var str = "My number is \(score)"
//print(str)

// Constants
let t = "hey";
// Error: let is unmutable ( constant ) ( change 'let' to 'var' to make it mutable )
//t = "H";

// Type Annotation-----------------------
// Error
//let t;  var r;
//Correct
let f : Double;
f = 57;
print(f)
//This is called type inference: Swift is able to infer the type of something based on how you created it.
//infer : Decide based on information