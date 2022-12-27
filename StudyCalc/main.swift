// Created by Nik Degilevich on 11.2022.
// Last refactored on 14.12.2022
/*
import Darwin

print("Добро пожаловать в программу калькулятор")

var history: [String] = []

while true {
    let action = getDataFromUser(description: "Что Вы хотите сделать? с - расчет примера, q - для завершения работы, h - для просмотра истории вычислений")
    switch action {
    case "c":
        calculate()
    case "q":
        exit(0)
    case "h":
        showHistory()
    default:
        print("Недопустимое действие")
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

func calculate2(operation: String, firstNumber: Int, secondNumber: Int) -> Int? {
    switch operation {
    case "+":
        return firstNumber + secondNumber
    case "-":
        return firstNumber - secondNumber
    case "*":
        return firstNumber * secondNumber
    case "/" where secondNumber == 0:
        print("Деление на 0 недопустимо")
        return nil
    case "/":
        return firstNumber / secondNumber
    default:
        print("Вы некорректно ввели операцию")
        return nil
    }
}

func showHistory() {
    for example in history {
        print(example)
    }
}

func calculate() {
    let operation = getDataFromUser(description: "Выберите операцию: +, -, *, /")
    guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else {
        print("Вы некорректно ввели операцию")
        return
    }
    let firstNumber = getDataFromUser(description: "Введите первое целое число:")
    guard let firstNumber = Int(firstNumber) else {
        print("Вы некорректно ввели первое число")
        return
    }
    let secondNumber = getDataFromUser(description: "Введите второе целое число:")
    guard let secondNumber = Int(secondNumber) else {
        print("Вы некорректно ввели второе число")
        return
    }
    
    let example = String(firstNumber) + " " + operation + " " + String(secondNumber)
    print("Идет вычисление примера: " + example)
    
    let result = calculate2(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    guard let result = result else { return }
    
    showResult(result)
    history.append(example + " = " + String(result))
}
*/

func
