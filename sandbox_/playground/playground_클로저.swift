//다음 함수 타입에 맞는 함수를 정의하고, 상수에 대입하고 사용하는 코드를 작성하시오.
//(Int, Double) -> Int
//([String]) -> Int
//(String, Int) -> [String: Int]
func practice1(_ part1: Int, _ part2: Double) -> Int {
    return 1
}
let practice1Closure :(Int, Double) -> Int = { (part1, part2) -> Int in
    return 0
}

func practice2(_ part1: [String]) -> Int {
    return 1
}
let practice2Closure: ([String]) -> Int = { (part1) -> Int in
    return 1
}

func practice3(_ part1: String, _part2: Int) -> [String: Int] {
    return ["A": 1]
}
let practice3Closure: (String, Int) -> [String: Int] = { (part1, part2) -> [String: Int] in
    return ["A":1]
}
