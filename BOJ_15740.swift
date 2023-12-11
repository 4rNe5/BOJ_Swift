// way 1


var input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

print(input[0] + input[1])





// Way 2

//var input: [String] = readLine()!.split(separator: " ").map{String($0)}
//
//var asum: Int = 0, bsum: Int = 0
//
//for i in input[0] {
//    asum = (asum * 10 + Int(String(i))!)
//    print("asum : \(asum)")
//}
//
//for i in input[1] {
//    bsum = (bsum * 10 + Int(String(i))!)
//    print("bsum : \(bsum)")
//}
//
//print(asum + bsum)





//Other's
let input = readLine()!.split(separator: " ").map { String($0) }
let a = input[0], b = input[1]

func bigAdd(_ a: String, _ b: String) -> String {
    let longNumber = a.count >= b.count ? a.reversed().map { $0 } : b.reversed().map { $0 }
    var shortNumber = b.count <= a.count ? b.reversed().map { $0 } : a.reversed().map { $0 }
    let diff = [Character](repeating: "0", count: longNumber.count - shortNumber.count)
    shortNumber.append(contentsOf: diff)

    var answer: [String] = []

    var carry = 0
    for i in 0..<longNumber.count {
        var sum = Int(String(longNumber[i]))! + Int(String(shortNumber[i]))! + carry
        carry = sum / 10
        sum %= 10
        answer.append("\(sum)")
    }

    if carry > 0 {
        answer.append("1")
    }
    return answer.reversed().joined()
}

print(bigAdd(a, b))