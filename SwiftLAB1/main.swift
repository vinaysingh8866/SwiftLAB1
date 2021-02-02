//
//  main.swift
//  SwiftLAB
//
//  Created by Vinay Singh on 30/01/21.
//

import Foundation


func discount(){
    print("Enter Total quantity")
    let quantity = readLine()
    print("Enter Price of each price")
    let price = readLine()
    let amount = ((Double(quantity ?? "0") ?? 0) * (Double(price ?? "0") ?? 0))
    if amount > 1000{
        print("Amount more than 1000 discount is "+String((amount*0.1))+" on "+String((amount))+". Total price is "+String((amount-amount*0.1)))
    }
    else {
    print("No discount below 1000. Total price is "+String(amount))
    }
}



func leap_year() -> (Bool){
    print("Enter Year To check if its a leap year")
    let year_line = readLine()
    let year = Int(year_line ?? "0")
    if ((year ?? 0) % 4)==0{
        return true
    }
    if((year ?? 0) % 100)==0{
        return false
    }
    if((year ?? 0) % 400)==0{
        return true
    }
    return false
}


func sum_and_avrage(){
    var someInts = [Int]()
    print("Enter values for array")
    for _ in 1...5{
        let num_string = readLine() ?? "0"
        let num = Int(num_string) ?? 0
        someInts.append(num)
    }
    
    print("The sum is " + String(someInts.reduce(0, {$0 + $1})) + ".The avrage is "+String(someInts.reduce(0, {$0 + $1})/5))

    
}
discount()
leap_year() ? print("Is a leap year") : print("Not a leap year")
sum_and_avrage()




 
