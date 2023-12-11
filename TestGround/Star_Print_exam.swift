import Foundation

let input: Int = Int(readLine()!)!

var i: Int = 1

for i in stride(from: 1, through: input, by: 1) {
    for _ in stride(from: 1, through: i, by: 1) {
        print("*", terminator: "")
    }
    print("\n")
}

print("\n")

for ii in stride(from: input - 1, through: 1, by: -1) {
    for _ in stride(from: ii, through: 1, by: -1) {
        print("*", terminator: "")
    }
    print("\n")
    
}