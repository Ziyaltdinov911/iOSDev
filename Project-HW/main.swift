//
//  main.swift
//  Project-HW
//
//  Created by Камиль Байдиев on 31.12.2023.
//

import Foundation

//Домашнее задание №10-11
//Создать и дополнить программу на Swift с использованием обобщенных структур и расширений. Понять, как создавать обобщенные структуры, выполнять операции и расширять их функциональность.
//
//Задачи:
//
//Структура Calculator:
//
//Определите обобщенную структуру с именем Calculator<T>, включающую метод performOperation(_:_:operation:). Этот метод принимает два значения типа T и замыкание типа (T, T) -> T, представляющее операцию. Метод должен возвращать результат применения операции к двум значениям.
//Структура Contact:
//
//Определите обобщенную структуру с именем Contact<T>, представляющую контакт. Она должна иметь свойства firstName, lastName и phoneNumber типа T.
//Структура MyArray:
//
//Определите обобщенную структуру с именем MyArray<T>, имеющую свойство массива elements типа [T].
//Реализуйте метод filterContacts(byLastNamePredicate:), принимающий замыкание типа (T) -> Bool и фильтрующий контакты на основе предоставленного предиката.
//Реализуйте мутирующий метод shuffle(using:), который перемешивает элементы массива с использованием предоставленного замыкания типа (T, T) -> Bool.
//Расширения для Contact:
//
//Расширьте структуру Contact, добавив метод с именем printContactDetails(). Этот метод должен выводить полное имя и номер телефона контакта.
//Основная программа:
//
//Создайте экземпляр Calculator с обобщенным типом Int.
//Используйте калькулятор для выполнения операций сложения и вычитания, а затем выведите результаты.
//
//Создайте экземпляр MyArray с обобщенным типом Contact<String>.
//Добавьте несколько экземпляров контактов в массив.
//
//Отфильтруйте контакты по фамилии, начинающейся с буквы 'И', и выведите их детали.
//
//Создайте изменяемую копию массива контактов, перемешайте его случайным образом и выведите перемешанные контакты.

struct Calculator<T> {
    func performOperation(_ a: T, _ b: T, operation: (T, T) -> T) -> T {
        return operation(a, b)
    }
}

struct Contact<T> {
    var firstName: T
    var lastName: T
    var phoneNumber: T
}

struct MyArray<T> {
    var elements: [T]
    
    func filterContacts(byLastNamePredicate predicate: (T) -> Bool) -> [T] {
        return elements.filter(predicate)
    }
    
    mutating func shuffle(using comparator: (T, T) -> Bool) {
        elements = elements.sorted { _, _ in Bool.random() }
    }
}

extension Contact {
    func printContactDetails() {
        print("Человек: \(firstName) \(lastName),\nНомер: \(phoneNumber)\n")
    }
}

let intCalculator = Calculator<Int>()

let additionResult = intCalculator.performOperation(51, 3) { $0 + $1 }
let subtractionResult = intCalculator.performOperation(82, 40) { $0 - $1 }

print("Результат сложения: \(additionResult)")
print("Результат вычитания: \(subtractionResult)\n")

var contactsArray = MyArray(elements: [
    Contact(firstName: "Petya", lastName: "Kalinin", phoneNumber: "2-47-11"),
    Contact(firstName: "Anton", lastName: "Mirasov", phoneNumber: "2-22-21")
])

let filteredContacts = contactsArray.filterContacts { contact in
    guard let lastName = contact.lastName as String? else { return false }
    return lastName.hasPrefix("a")
}

filteredContacts.forEach { $0.printContactDetails() }

var shuffledContacts = contactsArray
shuffledContacts.shuffle(using: { _, _ in Bool.random() })

shuffledContacts.elements.forEach() { $0.printContactDetails() }

