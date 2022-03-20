//Array

import os
import Foundation

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//有名稱的function
func back(_ s3:String,_ s4:String) -> Bool{
    return s3 < s4
}
let a1 = names.sorted(by: back)
print(a1)



//標準的closure
names.sorted(by: {(s1:String,s2:String) -> Bool in
    return s1 < s2
})

//簡化資料類型的closure
names.sorted(by: {
    s1,s2 in return s1 < s2
})

//trailing closure
names.sorted(){
    s1,s2 in
    return s1 < s2
}
//filter
let numbers = [50, 97, 35, 21, 93]
numbers.filter(){
    /*
    n1 in
    return n1 >= 50*/
    (n1:Int) -> Bool in
    return n1 >= 50
}


//
var test = [1,6,9,3,6,2,5]
test.sort()
print(test)
//
