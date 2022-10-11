
var words = [String] ()
var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}
var tempArray = words

var numPasses = 0
var numSwaps = 0
var totalSwaps = 0
var control = 0

func Swap(words: inout [String], index1: Int, index2: Int) {
    let Int1 = words[index1]
    let Int2 = words[index2]

    words[index1] = Int2
    words[index2] = Int1

    numSwaps += 1
}

print( "Pass: \(numPasses), Swaps: \(numSwaps)/\(totalSwaps), Array: \(unsortedIntegers)")

func sort(words: inout [String]) {

    for index in 0..<words.count - 1 {
        numSwaps = 0
        var leastIndex = index
        for indexSwap in index + 1..<words.count {
            if words[indexSwap] < words[leastIndex] {
                leastIndex = indexSwap
            }
        }
        Swap(words: &words, index1: index, index2:  leastIndex)

        totalSwaps += 1
        numPasses += 1
        
        print("Pass: \(numPasses), Swaps: \(numSwaps)/\(totalSwaps), Array: \(words)")
    }
}
sort(words: &tempArray)
