var inputCnt: UInt64 = UInt64(readLine()!)!

func printBig(eur: UInt64, tel: UInt64) -> String {
    if eur > tel {
        return "Eurecom"
    } else if tel > eur {
        return "TelecomParisTech"
    } else {
        return "Tie"
    }
}

for _ in stride(from: 1, through: inputCnt, by: 1) {
    let input: [UInt64] = readLine()!.split(separator: " ").map { UInt64($0)! }

    let eurecom: UInt64 = input[0] * input[1]
//    print("Eurecom : \(eurecom)")
    let telecom: UInt64 = input[2] * input[3]
//    print("TelecomParisTech : \(telecom)")

    print(printBig(eur: eurecom, tel: telecom))
}