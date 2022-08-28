// Function

func printHelp() {
    // /print("Hey");
}

printHelp()

print("Hello, world!")
//Values sent into functions this way are called parameters.

func square(num: Int){
    //
    print(num * num);
}
// Important to specify parameter name;
square(num: 7)

//a function could take no parameters or take 20 of them.

// ----------------------- ///
func s(num: Int) -> Int {
    return num * num
}
//print(s(num: 5))

func st() -> (Int, Int, Int) {
    return (5, 5, 3)
}
//print(st())

// --------------------
// when our code can be boiled down to a single value, such as true, false, “Hello”, or 19, we call that an expression --->
// Expressions are things that can be assigned to a variable, or printed using print(). 
 

//On the other hand, when we’re performing actions such as creating variables, starting a loop, or checking a condition,
// then we call that a statement.
// All this matters because Swift lets us skip using the return keyword when we have only one expression in our function. 
// So, these two functions do the same thing:
func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

// Returning Tuples
func abc() -> (first: String, last: String){
    (first: "Avii", last: "Mehra")
}
print(abc().last)

// immune - not affected by something - suraksit
// Now we’ve written code that is immune to all our problems:

// Our data must be returned first name first and last name second.
// If we insert a middle name it will not affect the position of other values.
// We can’t make case-sensitive mistakes while reading values.
// There's no way we won’t get back a first name or last name – if someone only uses one name then we’ll get back an empty string.
// There is no optionality.


// --------------------------------------------------------------------------
//The parameter is called for msg, which means externally it’s called 'for ', but internally it’s called ' msg '.
// This gives variables a sensible name inside the function, but means calling the function reads naturally:
func sendMessage(for msg: String){
    print(msg)
}
sendMessage(for: "Avii")
// we can use ' for ' as second parameter name but you can't as first parameter name, because inside body ' for ' keyword will 
//refer to for loop keyword

// And now our code becomes much clearer – we know exactly what each value does when we call the function, 
//rather than having to remember whether isEmergency comes first or last.

// ooooooooooooooooooooooooooooooooooooooooooooooooooooooooo //
// Omiting Parameter Label
func myfunc(_ msg: String){
    print(msg)
}
myfunc("Hello Welcome Home")

// Example This can make some code more natural to read, but generally it’s better to give your parameters external names to avoid confusion. For example, if I say setAlarm(5) it’s hard to tell what that means – does it set an alarm for five o’clock, set an alarm for five hours from now, or activate pre-configured alarm number 5?
//This is particularly important when the parameter label is likely to be the same as the name of whatever you’re passing in:
//Singing a song would be sing(song) rather than sing(song: song)


// ------------- Default Value ---------------- //
 // so print() has a terminator parameter that uses new line as its default value.
 // space as sepratror
 func greet(_ name: String = "Subh"){
    print("Wlcome my \(name)", "variadi", separator: "\n")
 }
 //greet()
 //greet("Rani")
// -------------------------------------------------------------------------------- //
// Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type. //
func square2(_ numbsers : Int...)   {
    print("Yes")
    
    for item in numbsers {
      print(item, terminator: " ")
    };
}
// Int... is zero or more integers
square2(8, 9, 10)
square2() // This case loop won't run but rest of code will run

// -- Throw error from function -- //
// && Error Handling in swift
enum ErrorTypes : Error  {
    case obvisious
    case easy
}
func abc2(pass: String) throws -> Bool{
    if (pass == "123"){
        throw ErrorTypes.easy
    }
    return true 
}

// we have to use try before every throwing function
do {
    var _ = try abc2(pass: "123")
    print("ERROR not thrown")
    
} catch{
    print("Error thrown")
}

// do, try, and catch. We need all three to be able to call a throwing function, which is unusual 
 // Swift won't let you run an error-throwing function by accident( without try, do catch block)

 // =------------------------------------- //
 //All parameters passed into a Swift function are constants, so you can’t change them
  // inout Parameters ( pass by reference )

  func doubleInPlace(number: inout Int){
    number *= number
  }

var n: Int = 10;
doubleInPlace(number: &n)
print(n)

  

