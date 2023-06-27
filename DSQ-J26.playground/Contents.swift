//check if a string is palindrome,
//without finding reverse of the string
let testStr1 = "Test String One"
let testStr2 = "racecar"
let testStr3 = "est"

func palindrome(input: String) -> Bool {
    let count = input.count
    for i in 0..<count/2 {
        let leftIndex = input.index(input.startIndex, offsetBy: i)
        let rightIndex = input.index(input.startIndex, offsetBy: count - 1 - i)
        if input[leftIndex] != input[rightIndex] {
            return false
        }
    }
    return true
}

palindrome(input: testStr1)
palindrome(input: testStr2)

//count the number of occurences of each char in the input str
func charOccurences (input: String) -> Dictionary<Character, Int> {
    var resultDict: [Character: Int] = [:]
    
    for i in input {
        if resultDict.contains(where: { $0.key == i}) {
            resultDict[i] = (resultDict[i] ?? 0) + 1
        } else {
            resultDict[i] = 1
        }
    }
    
    return resultDict
}

charOccurences(input: testStr2)
charOccurences(input: testStr1)

//find the most recurring char in string

func mostRecurringChar(input: String) -> Character {
    var resultDict: [Character: Int] = [:]
    
    for i in input {
        if resultDict.contains(where: { $0.key == i}) {
            resultDict[i] = (resultDict[i] ?? 0) + 1
        } else {
            resultDict[i] = 1
        }
    }
    
    let maxVal = resultDict.values.max()
    return resultDict.first(where: { $0.value == maxVal } )?.key ?? " "
}

mostRecurringChar(input: testStr1)

//remove duplicate char from str

func removeDuplicate(input: String) -> String {
    var resultStr = ""
    
    for i in input {
        if !resultStr.contains(i) {
            resultStr = resultStr + String(i)
        }
    }
    
    return resultStr
}

removeDuplicate(input: testStr1)
removeDuplicate(input: testStr2)

//print all the duplicate chars in the input string

func printDuplicate(input: String) {
    var originalChars = ""
    
    for i in input {
        if !originalChars.contains(i) {
            originalChars = originalChars + String(i)
        } else {
            print(i)
        }
    }
}

//find first non-repeating char in str

func firstNonRepeat(input: String) -> Character? {
    var originalChars = ""
    var nonRepeatChar: Character?
    for i in input {
        if !originalChars.contains(i) {
            originalChars = originalChars + String(i)
        } else {
            return i
        }
    }
    return nonRepeatChar
}

firstNonRepeat(input: testStr1)

//remove char from first str which are present in the second str

func removeCommonChar(input1: String, input2: String) -> String {
    var resultStr = ""
    
    for i in input1 {
        if !input2.contains(i) {
            resultStr = resultStr + String(i)
        }
    }
    
    return resultStr
}

removeCommonChar(input1: testStr1, input2: testStr3)

//check if strings are rotations of each other or not



//print all permutations of a string

//reverse each word in a string
