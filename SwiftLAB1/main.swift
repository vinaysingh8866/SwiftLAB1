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
//discount()
//leap_year() ? print("Is a leap year") : print("Not a leap year")
//sum_and_avrage()





class Polygon{
    
    var no_of_sides: Int
    var interior_angle: Int
    var side_length:Int
    init() {
        no_of_sides = 0
        interior_angle = 0
        side_length = 0
    }
    
    
    func printNumOfSides() {
        print(no_of_sides)
    }
    
    
    func printInteriorAngle(){
        print(interior_angle)
    }
    
    
    func interiorAngle(){
        interior_angle=( no_of_sides-2)*180
    }
}

class Triangle: Polygon {
    var area: Double
    var parameter:Double
    
    override init() {
        
        area=0
        parameter=0
        super.init()
        no_of_sides=3
    }
    
    func getSideLength(){
        print(side_length)
    }
    
    
    func setSideLength(length: Int){
        side_length = length
    }
    
    func printArea(){
        print(area)
    }
    
    func calculateArea() {
        
        let sq_root = sqrt(3)
        print("Area is ")
        print(0.5*sq_root*Double(side_length))
    }
    
}


var tri = Triangle()
tri.setSideLength(length:20)
tri.interiorAngle()
tri.calculateArea()
tri.printNumOfSides()



 
