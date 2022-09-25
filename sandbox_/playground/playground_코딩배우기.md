# 코딩 배우기2 - [변수/값 증가시키기]
<<<<<<< HEAD
## 한상윤
var gemCounter = 0
func strstraight(){
    while !isBlocked {
        if isOnGem{
            gemCounter = gemCounter + 1
            collectGem()
            moveForward()
        }
        if !isOnGem{
            moveForward()
        }
    }
}
func solution(){
    strstraight()
    turnRight()
}
for i in 1...2{
    solution()
}
strstraight()
=======

var GemCounter = 0

while !(isBlocked && isBlockedRight){
    if isBlocked{
        turnRight()
    }
    moveForward()
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}


### 동욱 풀이

var gemCounter = 0

while isBlocked == false {
    moveForward()
    if isOnGem == true {
        collectGem()
        gemCounter = gemCounter + 1
    }
}
turnRight()
while isBlocked == false {
    moveForward()
    if isOnGem == true {
        collectGem()
        gemCounter = gemCounter + 1
    }
}
turnRight()
while isBlocked == false {
    moveForward()
    if isOnGem == true {
        collectGem()
        gemCounter = gemCounter + 1
    }
}

# 코딩 배우기2 - [올바른 포털 설정하기]
<<<<<<< Updated upstream
=======
>>>>>>> 49092b4d3b1db62af2012f5b6ea2597447f6041e
>>>>>>> Stashed changes


### 동욱 풀이

func aaaa() {
    turnLeft()
    turnLeft()
}

bluePortal.isActive = false
pinkPortal.isActive = false
while isBlocked == false {
    moveForward()
}
collectGem()
aaaa()
pinkPortal.isActive = true
moveForward()
aaaa()
moveForward()
collectGem()
aaaa()
bluePortal.isActive = true
moveForward()
moveForward()
moveForward()
collectGem()
aaaa()
bluePortal.isActive = false
moveForward()
moveForward()
collectGem()


###
