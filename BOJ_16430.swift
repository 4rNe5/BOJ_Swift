import Foundation

let input: [UInt64] = readLine()!.split(separator: " ").map { UInt64($0)! }

print("\(input[1]-input[0]) \(input[1])")