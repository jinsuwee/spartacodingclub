
class Calculator {
    func calculate(operator: String, num1: Double, num2: Double) -> Double? {
        switch `operator` {
        case "+":
            return add(num1, num2)
        case "-":
            return subtract(num1, num2)
        case "*":
            return multiply(num1, num2)
        case "/":
            return divide(num1, num2)
        default:
            print("Invalid operator.")
            return nil
        }
    }
    
    func add(_ num1: Double,_ num2: Double) -> Double {
        return num1 + num2
    }
    
    func subtract(_ num1: Double,_ num2: Double) -> Double {
        return num1 - num2
    }
    
    func multiply( _ num1: Double,_ num2: Double) -> Double {
        return num1 * num2
    }
    
    func divide(_ num1: Double,_ num2: Double) -> Double? {
        if num2 == 0 {
            return nil
        } else {
            return num1 / num2
        }
    }
}


let calculator = Calculator()

calculator.add(5, 5)
calculator.subtract(5, 5)
calculator.multiply(5, 5)
calculator.divide(5, 5)
