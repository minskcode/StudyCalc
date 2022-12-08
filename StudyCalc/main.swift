//  main.swift
//  StudyCalc
// created by Nik Degilevich on 04.12.2022

/*
print("Добро пожаловать в программу калькулятор")
print("Выберите операцию: +, -, * или /")
let operation = readLine() ?? ""
print("Введите первое целое число")
let firstNumber = readLine() ?? ""
print("Введите второе целое число")
let secondNumber = readLine() ?? ""
print("Идет вычисление примера: \(firstNumber) \(operation) \(secondNumber)")
let result: Int
let firstNumberInt = Int(firstNumber)
let secondNumberInt = Int(secondNumber)
if operation == "+" {
    result = firstNumberInt! + secondNumberInt!
    print("Результат: \(result)")
}
else if operation == "-" {
    result = firstNumberInt! - secondNumberInt!
    print("Результат: \(result)")
    
}
else if operation == "*" {
    result = firstNumberInt! * secondNumberInt!
    print("Результат: \(result)")
    
}
else if operation == "/" {
    result = firstNumberInt! / secondNumberInt!
    print("Результат: \(result)")
    
}
else {
    print("Error")
}
*/

print("Добро пожаловать в программу калькулятор")

let operation = getDataFromUser(description: "Выберите операцию: +, -, *, /")
let firstNumber = getDataFromUser(description: "Введите первое целое число:")
let secondNumber = getDataFromUser(description: "Введите второе целое число:")

print("Идет вычисление примера: " + firstNumber + " " + operation + " " + secondNumber)
if let firstNumber = Int(firstNumber) {
    if let secondNumber = Int(secondNumber) {
        switch operation {
        case "+": print("Результат: " + String(firstNumber + secondNumber))
        case "-": print("Результат: " + String(firstNumber - secondNumber))
        case "*": print("Результат: " + String(firstNumber * secondNumber))
        case "/":
            if secondNumber != 0 {
                print("Результат: " + String(firstNumber / secondNumber))
            } else {
                print("Делить на 0 нельзя")
            }
        default: print("Вы некорректно ввели операцию")
        }
    } else {
        print("Вы ввели некорректное второе число")
    }
} else {
    print("Вы ввели некорректное первое число")
}

func getDataFromUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}
