//
//  main.swift
//  StudyCalc
// created by Nik Degilevich on 04.12.2022

print("Добро пожаловать в программу калькулятор")
print("Выберите операцию: +, -, * или /")
let operation = readLine() ?? ""
print("Введите первое целое число")
let firstNumber = readLine() ?? ""
print("Введите второе целое число")
let secondNumber = readLine() ?? ""
let result: Int
let firstNumberInt = Int(firstNumber)
let secondNumberInt = Int(secondNumber)
if operation == "+" {
    result = firstNumberInt! + secondNumberInt!
    print(result)
}
else if operation == "-" {
    result = firstNumberInt! - secondNumberInt!
    print(result)
}
else if operation == "*" {
    result = firstNumberInt! * secondNumberInt!
    print(result)
}
else if operation == "/" {
    result = firstNumberInt! / secondNumberInt!
    print(result)
}
else {
    print("Error")
}