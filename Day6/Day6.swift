
/* ----------------------------------------------------
   ----------------------------------------------------
   Closers
   ----------------------------------------------------
   ---------------------------------------------------- */

// Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.
// Functions used in this way are called closures, and although they work like other functions they are written a little differently.
// One of the most common reasons for closures in Swift is to store functionality – to be able to say “here’s some work I want you to do at some point, but not necessarily now
// One of the differences between functions and closures is that you don’t use parameter labels when running closures
let myNewFunc = { (number : inout Int) in
    print("Print My Function \(number *= number)")
}
var num: Int = 5
myNewFunc(&num)
print(num)

// the in keyword is there to mark the end of the parameter list and the start of the closure’s body itself.
// Closers cannot take external paramters labels
// Closures take their parameters inside the brace to avoid confusing Swift: if we had written let payment = (user: String, amount: Int) then it would look like we were trying to create a tuple, not a closure, which would be strange.

// --------------------- Closers that return value ---------------------  //

let closer2 = { (number : Int) -> Int in
    return number * number
}
print(closer2(8))

// --------------------- Return value from function that takes no paramaters ---------------------  //

let closer3 = { () -> Bool in
    print("Closer 3")
    return true
}
print(closer3())


// --------------------- Passing Closers as paramters ---------------------  //

let closer4 = { (yell : String) in
    print("Inside Closer \(yell)")
}
func iCanAcceptClosers(action: (String) -> Void) {
    print("I got your closer")
    action("Jack")
    print("Closer successfully executed")
}

iCanAcceptClosers(action: closer4)

// --------------------- Trailing Clouser Syntax ---------------------  //

func SpecialSyntx(st: Int ,action: () -> Void) {
    print("Before Calling Closure")
    action()
    print("After Calling Closure \(st)")
}

SpecialSyntx(st: 5) {
    print("Inside Closure")
}