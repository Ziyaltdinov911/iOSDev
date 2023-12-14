//
//  main.swift
//  Project-HW
//
//  Created by Камиль Байдиев on 10.12.2023.
//

import Foundation

// Задание 1: Создание класса Car
// Описание: Опишите класс "Car", включающий общие свойства автомобилей и пустой метод действия.
// Требования:
// Определите общие свойства для автомобилей (например, марка, модель, год выпуска и т. д.)
// Включите пустой метод действия.
// Подсказки:
// Не забудьте использовать конструктор для инициализации свойств.
//
// Ожидаемый результат:
// Класс Car, который содержит общие свойства автомобилей и пустой метод действия.
//

class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func movingCar() {
        print("Машина \(brand) \(model) \(year) едет к тебе")
    }
}

let aboutCar = Car(brand: "Jeep", model: "Grand Cheeroke", year: 2008)
aboutCar.movingCar()
 
