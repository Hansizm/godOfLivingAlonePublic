import UIKit


import Foundation



func example1(number1: Int, number2: Double) -> Int {
    return 0
}

let ars1: (Int, Double) -> Int = example1

func example2(string1: [String]) -> Int {
    return 0
}

let ars2: ([String]) -> Int = example2

func example3(string2: String, number3: Int) -> [String: Int]{
    return ["Keys":2]
}

let ars3: (String, Int) -> [String: Int] = example3

// Dictionary 선언의 문법
// [String : Int] 는 String 타입의 Key 를 가지고 Int 타입의 Value 를 가지는 딕셔너리를 선언하는 문법

// Closure 표현
// let sumClosure = { (numbers: [Int]) -> Int in
//  return 0
// }



let example1Closure = { (number1: Int, number2: Double) -> Int in
    return 0
}

let example2Closure = { (string1: [String]) -> Int in
    return 0
}

let example3Closure = { (string2: String, number3: Int) -> [String: Int] in
    return ["Keys":2]
}

func sayHi(handler: (String) -> Void) {
    print("Hi")
}

///
let argFn : (String) -> Void = { (arg: String) -> Void in
    print(arg)
}

sayHi(handler: argFn)


// map 변환 실습
let array = [1,2,3,4,5]

var result = [Int]()
for item in array {
    result.append(item*2)
}
result // Loop로 작성한 코드

let retArray = array.map { (item) -> Int in
    return item*2
}

// filter
// 3보다 큰 원소

var result3 = [Int]()
for item in [1,2,3,4,5] {
    if item > 3 {
        result3.append(item)
    }
}

let array2 = [1,2,3,4,5]
let fn: (Int) -> Bool = { (item: Int) -> Bool in
    if item > 3 {
        return true
    }
    return false
}

let retFilter = array2.filter{ item in return item > 3}

let fn2: (Int) -> String = { (item: Int) -> String in
    return "item \(item)"
}

let retDuce = array2.reduce("") { (prevRet: String, item: Int) -> String in
    return prevRet + "\(item)"
}

array2.filter { item in
    item % 2 == 1
}.map { item in
    item * 3
}.reduce("") { (prevRet, item) in
    prevRet + "\(item)"
}


// For loop로 문제 출제하기, map filter reduce 이용하여 변환

// for를 이용하여 1부터 10까지 세제곱한 수의합
let result4 = [1,2,3,4,5,6,7,8,9,10]
var result4sum = 0
for item in result4 {
    result4sum += item*item*item
}
print (result4sum)

// map 이용

let result4Array = result4.map { (item) -> Int in
    return item * item * item
}
var result4Mapsum = 0
for item in result4Array{
    result4Mapsum += item
}
print(result4Mapsum)


// for를 이용하여 1부터 10까지 곱한 수의 합
let result5 = [1,2,3,4,5,6,7,8,9,10]
var result5sum = 1
for item in result5 {
    result5sum *= item
}
print (result5sum)

let result5Array = result5.map { (item) -> Int in
    return item
}
var result5Mapsum = 1
for item in result5Array {
    result5Mapsum *= item
}
print (result5Mapsum)

// Q.3 10까지의 수 중 소수인 숫자 나타내기(filter)

let result6 = [1,2,3,4,5,6,7,8,9,10].filter { (item) -> Bool in
    // return item
    
}

// Q.4 짝수인 숫자 나타내가(filter)
let result7 = [1,2,3,4,5,6,7,8,9,10].filter { (item) -> Bool in
    // return item > 5
    
}

