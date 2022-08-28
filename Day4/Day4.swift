let count = 1...10;
for item in count {
    //print("Current Item: \(item)")

    //item variable is constant, you cannot do like this
    //item = 5
}

// You you do not need value use underscore
for _ in count {
    //print("Print")
}


//----------------------------------//
repeat {
    print("Yes")
} while false

// Break nested loops using labels
outLoop: for i in 1...10 {
    for j in 1...10 {
        if( i * j == 50) {
            break outLoop;
        }
    }
}

//Just like break, you can use continue with labeled statements if you want, 
//but honestly I can’t remember ever seeing it done!

 outLoop2: for i in 1...5 {
   for j in 1...5 {
        if( i * j == 9) {
            continue outLoop2
        }
       // print("\(i) * \(j) is \(i*j)")
    }
}
