import Foundation

var input: Int = Int(readLine()!)!
var count: Int = 0

while input > 0 {
    input = input - 5
    count = count + 1
}

print(count)

