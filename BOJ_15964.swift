var input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

var q: Int = input[0]+input[1]
var r: Int = input[0]-input[1]

var oput: Int = q*r

print(oput)