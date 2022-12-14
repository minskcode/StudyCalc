// Created by Nik Degilevich on 11.2022.
// Refactored on 14.12.2022

import Darwin

print("Добро пожаловать в программу калькулятор")

var history: [String] = []

while true {
    let operation = getDataFromUser(description: "Выберите операцию: +, -, *, /. Для завершения работы введите q. Введите h для просмотра истории вычислений")
    if operation == "q" {
        exit(0)
    } else if operation == "h" {
        for example in history {
            print(example)
        }
        continue
    }
    let firstNumber = getDataFromUser(description: "Введите первое целое число:")
    let secondNumber = getDataFromUser(description: "Введите второе целое число:")
    
    let example = firstNumber + " " + operation + " " + secondNumber
    print("Идет вычисление примера: " + example)
    if let firstNumber = Int(firstNumber) {
        if let secondNumber = Int(secondNumber) {
            let result = calculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
            if let result = result {
                showResult(result)
                history.append(example + " = " + String(result))
            }
        } else {
            print("Вы ввели некорректное второе число")
        }
    } else {
        print("Вы ввели некорректное первое число")
    }
    print("")
    print("------------------------------------")
    print("")
}

func getDataFromUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}

func showResult(_ result: Int) {
    let result = String(result)
    let description = "Результат:"
    print(description + " " + result)
}

func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Int? {
    switch operation {
    case "+": return firstNumber + secondNumber
    case "-": return firstNumber - secondNumber
    case "*": return firstNumber * secondNumber
    case "/":
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            print("Делить на ноль нельзя")
            return nil
        }
    default:
        print("Вы некорректно ввели операцию")
        return nil
    }
}
