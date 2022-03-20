import UIKit

var greeting = "Hello, playground"

/*
迴圈              判斷
 for in
                if else
                guard else
                switch
 
 for in         集合物件
                array
                dictionary
                set
 */

let names = ["Anna","Alex","Brian","Jack"]
for name in names{
    print("Hello,\(name)")
}

/*
 key        Spider      Ant     Cat
 value        8          6       4
 */

let NumberOfLeg = ["Spider":8, "Ant":6, "Cat":4]
for (animalName, legCount) in NumberOfLeg{
    print("\(animalName)有\(legCount)隻腳")
}
for i in 1...5{
    print("\(i)*5=\(i*5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power{
    answer *= 3
}
print("\(base)的\(power)次方是\(answer)")

//while, 不知道要執行幾次
var times = 0
while(times < 5){
    print(times)
    times += 1
}

//if else
var tempF = 23
if(tempF<=32){
    print("It's cold outside")
}
else if(tempF<32 && tempF>=20){
    print("It's warm outside")
}
else{
    print("It's hot outside")
}

let price = 83_450.0
var paymoney = 0

if(price >= 100000){
     paymoney = Int(price * 0.8)
}
else if(price >= 50000){
     paymoney = Int(price * 0.85)
}
else if(price >= 30000){
     paymoney = Int(price * 0.9)
}
else if(price >= 10000){
     paymoney = Int(price * 0.95)
}
else{
     paymoney = Int(price)
}
print("您消費了\(price)\n\t打折後的價格是\(paymoney)")

let someChar:Character = "Z"

switch someChar{
    case "A":
        print("A")
    case "B":
        print("B")
default:
    print("not char")
}

//  switch 
let count = 62
switch count{
case 0:
    print("this is 0")
case 1..<5:
    print("this is 1~4")
case 5..<12:
    print("this is 5~11")
case 12..<100:
    print("this is 12~99")
case 100..<1000:
    print("this is 100~999")
default:
    print("this is 1000up")
}




