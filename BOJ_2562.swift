import Foundation

var arr: [Int?] = []

for _ in stride(from: 0, to: 9, by: 1) {
    arr.append(Int(readLine()!))
}

print("")

let unwrappedArr = arr.compactMap { $0 }

print(unwrappedArr.max()!)

let biggest: Int = unwrappedArr.max()!
print(arr.firstIndex(of: biggest)! + 1)