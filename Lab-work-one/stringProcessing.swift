func combineStrings() -> String {
    print("1) Enter 1st string")
    if let strOne = readLine() {
        print("Enter 2nd string")
        if let strTwo = readLine() {
            return strOne + strTwo
        } else {
            print("Error: 2nd string is nil")
            return "Error"
        }
    } else {
        print("Error: 1st string is nil")
        return "Error"
    }
}

func reverseString() -> String {
    var reversed = ""
    print("2) Enter a string to reverse")
    
    if let str = readLine() {
        for char in str {
            reversed = String(char) + reversed
        }
    } else {
        print("Error reading input")
    }

    return reversed
}

func countChars() -> Int{
    var count = 0
    print("3) Enter a string to count chars")
    if let str = readLine(){
        for _ in str{
            count += 1
        }
    } else {print("Error reading input")
    }
    return count
}

func findSubstr() -> Int {
    print("4) Enter a string")
    if let str = readLine() {
        print("Enter a substring to find it in the main string")
        if let substr = readLine() {
            var count = 0
            var currentIndex = str.startIndex

            while let range = str[currentIndex...].firstIndex(of: substr.first ?? substr.first!) {
                count += 1
                currentIndex = str.index(after: range)
            }

            print("Substring '\(substr)' found \(count) times in the main string.")
            return count
        } else {
            print("Error reading substring input")
        }
    } else {
        print("Error reading main string input")
    }

    return 0
}





print(combineStrings())
print(reverseString())
print(countChars())
findSubstr()




