import Foundation

enum Dir: CaseIterable {
    case up
    case down
    case left
    case right
}

// var Direction: Dir = .right

// switch Direction {
//     case .up:
//         print("uppercut")
//     case .down:
//         print("knockdown")
//     case .left:
//         print("lefthook")
//     case .right:
//         print("righthook")
// }

for i in Dir.allCases {
    print(i)
}