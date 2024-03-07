
// AddOperation(더하기) 클래스
class AddOperation {
    func perform(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

// SubtractOperation(빼기) 클래스
class SubtractOperation {
    func perform(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

// MultiplyOperation(곱하기) 클래스
class MultiplyOperation {
    func perform(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

// DivideOperation(나누기) 클래스
class DivideOperation {
    func perform(_ num1: Double, _ num2: Double) -> Double? {
        if num2 == 0 {
            return nil
        }
        else { return num1 / num2 }

    }
}

class Calculator {
    private let addOperation = AddOperation()
    private let subtractOperation = SubtractOperation()
    private let multiplyOperation = MultiplyOperation()
    private let divideOperation = DivideOperation()
    
    func calculate(operator: String, num1: Double, num2: Double) -> Double? {
        switch `operator` {
        case "+":
            return addOperation.perform(num1, num2)
        case "-":
            return subtractOperation.perform(num1, num2)
        case "*":
            return multiplyOperation.perform(num1, num2)
        case "/":
            return divideOperation.perform(num1, num2)
        default:
            print("Invalid operator.")
            return nil
        }
    }
}


let calculator = Calculator()
calculator.calculate(operator: "+", num1: 5, num2: 5)
calculator.calculate(operator: "-", num1: 5, num2: 5)
calculator.calculate(operator: "*", num1: 5, num2: 5)
calculator.calculate(operator: "/", num1: 5, num2: 5)
