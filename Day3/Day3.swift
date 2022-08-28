// In fact, there are certain numbers that Double isn’t even able to hold,
// so instead it stores a very slightly different value.
 let value: Double = 90000000000000001
 //print(value)
//warning: '90000000000000001' is not exactly representable as 'Double'; it becomes '90000000000000000'

// Integers lose the ability to store fractional values,
// but they gain the ability to store precise values.
// This means the following code won’t produce a warning, because the number can be stored exactly:

let value2: Int = 90000000000000001
//print(value2)

//So, it isn’t safe to add a Double to an Int because we lose any numbers after the decimal point, 
//and it isn’t safe to add an Int to a Double because we lose some accuracy.

//EX
//let a: Int = 8.12 + 7;
// Error error: cannot convert value of type 'Double' to specified type 'Int' 
//print(a)


//-------------------------------------------------------------

//Tip: If your goal is to ask “does this number divide equally into some other number?” 
//then Swift has an easier approach
let number = 465
let isMultiple = number.isMultiple(of: 7)
//print(isMultiple)
//-------------------------------------------------------

// + > Join Numbers, strings, arrays
//Error
//print("String" + 7)

// -----------------------Comparision Operators-----------------------

//Each of these also work with strings, because strings have a natural alphabetical order:

//print("Taylor" <= "Swift");
//print("Taylor" == "Swift");
//print("Taylor" >= "Swift");

//Swift has a special type for storing dates called Date,
//and you can compare dates using the same operators: someDate < someOtherDate.


//we can even ask Swift to make our enums comparable, like this:

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(" enum coparison: \(first < second)")
//That will print “true”, because small comes before large in the enum case list.


// --------------------------------// Conditions
let f = 11, s = 12
if f+s == 21
{
    print("OK")
}
else  {
    print("YY")   
}

//Error
var actualWage: Int = 22_000
var medianWage: Double = 22_000
// if actualWage >= medianWage {
// 	print("Success")
// }

// But
// print(22_000 >= 22_000.0 ? "valid" : "Invalid")
////////////////////////////////////////////////////////////////////
//Switch => default is Mandatory
let weather : Int = 7
switch weather {
case 1: print("1")
case 2: print("2")
case 7: print("7")
case 7: print("Again")

default : print("Jame")
}

// Swift will only run the body of matching case. If you want execution to continue on to the next case, 
// use the fallthrough keyword.
// This default case is not needed if you already cover all other cases, such as with an enum.

// --------------- Range ----------------- //
switch 8 {
case 1...10: print("Yes")
fallthrough
case 2..<8: print("Yes Again")
print("items: Any...")
fallthrough
default: print("No")
}

let names = ["Yes", "bye", "Gelo", "Gorilla Bounce"]
print(names[0..<(names.count - 2)])

// index 1 to the end of array
print(names[1...])



 

