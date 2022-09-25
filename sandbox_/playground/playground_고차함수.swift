

let array = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

//Q.1 구성된 배열의 각 원소의 +2한 값 구하기(map)
var plusTwo = [Int]()
for item in array {
    plusTwo.append( item + 2 )
}
print(plusTwo)

//Q.2 구성된 배열의 각 원소의 제곱한 값 구하기(map)
var squareOfArray = [Int]()
for item in array {
    squareOfArray.append( item * item )
}
print(squareOfArray)

//Q.3 소수인 숫자 나타내기(filter)
var primeNumber = [Int]()
for item in array {
    for i in 2...item-1 {
        if item % i == 0 {
                break
        }
        else {primeNumber.append(item)}
    }
}
print(primeNumber)

//Q.4 짝수인 숫자 나타내가(filter)
var evenNumber = [Int]()
for item in array {
    if item % 2 == 0 {
        evenNumber.append(item)
    }
}
print(evenNumber)

//Q.5 정해진 숫자까지 곱하기(reduce)
var mulNumber = 1
for item in array {
    mulNumber = (mulNumber * item)
}
print(mulNumber)
