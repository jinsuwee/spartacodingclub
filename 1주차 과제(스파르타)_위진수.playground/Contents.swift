//
//class Calculator {
//    func add (_ num1: Int, _ num2: Int) -> Int {
//        return num1 + num2
//    }
//    func substract (_ num1: Int, _ num2: Int) -> Int {
//        return num1 - num2
//    }
//    func multyply (_ num1: Int, _ num2: Int) -> Int {
//        return num1 * num2
//    }
//    func divide (_ num1: Int, _ num2: Int) -> Int {
//        return num1 / num2
//    }
//    // Lv.2 추가
//    func divideRest (_ num1: Int, _ num2: Int) -> Int {
//        return num1 % num2
//    }
//}
//
//
//let calculator = Calculator()
//calculator.add(6,3)
//calculator.substract(6,3)
//calculator.multyply(6,3)
//calculator.divide(6,3)
//calculator.divideRest(6,3)

//  Lv.3 아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
class AddOperation {
    func add (_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}
    
class SubtractOperation {
    func subtract (_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

class MultiplyOperation {
    func multiply (_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

class DivideOperation {
    func divide (_ num1: Double, _ num2: Double) -> Double {
        return num1 / num2
    }
}

class Calculator {
    
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()

    func add(_ num1: Double, _ num2: Double) -> Double {
        return addOperation.add(num1, num2)
    }
    func subtract(_ num1: Double, _ num2: Double) -> Double {
        return subtractOperation.subtract(num1, num2)
    }
    func multiply(_ num1: Double, _ num2: Double) -> Double {
        return multiplyOperation.multiply(num1, num2)
    }
    func divide(_ num1: Double, _ num2: Double) -> Double {
        return divideOperation.divide(num1, num2)
    }
    
}
