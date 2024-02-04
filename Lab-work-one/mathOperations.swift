func TakeNum() -> Double?{
    print("Put a num")
    if let input = readLine(), let num = Double(input){
    return num
    } else {
    print("Error.It's not a number or nothing")
    return nil
    
    }
}

func TakeOperation(numOne: Double, numTwo: Double) -> Double?{
    print("Put an character of operation among '* / + - %'")
    let input = readLine()
    switch input{
        case "+":
        return numOne + numTwo
        case "-":
        return numOne + numTwo
        case "*":
        return numOne * numTwo
        case "/":
        if numTwo != 0 {
              return numOne / numTwo
        } else {
            print("No division by zero")
            return nil
        }
        case "%":
        return numOne.truncatingRemainder(dividingBy: numTwo)
        default:
        print("No correct operation chose")
        return nil
    }
}

if let numOne = TakeNum(), let numTwo = TakeNum(){
    if let result = TakeOperation(numOne: numOne, numTwo: numTwo){
        print("Result: \(result)")
    }
    else{
        print("Error performing the task")
    }
}
