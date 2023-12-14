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
    
    func loadCargo(weight: Double) {
        
    }
    
    func uploadCargo(weight: Double) {
        
    }
    
    func overlocking() {
        
    }
    
    func braking() {
        
    }
    
}

let aboutCar = Car(brand: "Jeep", model: "Grand Cheeroke", year: 2008)
aboutCar.movingCar()

// Задание 2: Создание подклассов TrunkCar и SportCar
// Описание: Определите два подкласса "TrunkCar" и "SportCar", которые наследуют свойства и методы класса "Car" и добавляют свои уникальные характеристики.
// Требования:
// Определите специфические свойства для каждого подкласса.
// Подумайте о том, какими уникальными свойствами и методами могут обладать эти подклассы.
//
// Подсказки:
// Например, для "SportCar" могут быть свойства, связанные с максимальной скоростью, а для "TrunkCar" – с грузоподъемностью.
//
// Ожидаемый результат:
// Два класса, каждый из которых наследуется от Car и имеет дополнительные свойства, характерные для каждого типа автомобиля (например, максимальная грузоподъемность для TrunkCar и максимальная скорость для SportCar).
//
class TrunkCar: Car {
    var cargoCapacity: Double
    var cargoType: String

    init(brand: String, model: String, year: Int, cargoCapacity: Double, cargoType: String) {
        self.cargoCapacity = cargoCapacity
        self.cargoType = cargoType
        super.init(brand: brand, model: model, year: year)
    }


   override func loadCargo(weight: Double) {
        print("Груз загружен")
    }

   override func uploadCargo(weight: Double) {
        print("Груз выгружен")
    }
}

class SportCar: Car {
    var maxSpeed: Double
    var overlock: Double

    init(brand: String, model: String, year: Int, maxSpeed: Double, overlock: Double) {
        self.maxSpeed = maxSpeed
        self.overlock = overlock
        super.init(brand: brand, model: model, year: year)
    }

    override func overlocking() {
        print("\(brand) \(model) разгоняется.")
    }

   override func braking() {
        print("\(brand) \(model) тормозит.")
    }

}

let trunckCar = TrunkCar(brand: "FAW", model: "J6", year: 2014, cargoCapacity: 12_000, cargoType: "Diesel car")

let sportCar = SportCar(brand: "Audi", model: "A4", year: 2009, maxSpeed: 250, overlock: 6.7)

// Задание 3: Расширение enum с действиями
// Описание: Возьмите перечисление (enum) с действиями над автомобилем из прошлого задания и добавьте действия, специфичные для "TrunkCar" и "SportCar".
// Требования:
// Добавьте в перечисление дополнительные действия для каждого подкласса.
//
// Подсказки:
// Подумайте, какие действия могут быть особенно релевантны для грузовых и спортивных автомобилей.
//
// Ожидаемый результат:
// Перечисление CarAction из предыдущего задания, дополненное действиями, специфичными для TrunkCar и SportCar.

enum ActionForCar {
    case start
    case stop
    case loadCargo(Double)
    case uploadCargo(Double)
    case overlock(Double)
    case braking
}

let actionForTrunckCar: ActionForCar = .loadCargo(11_000)
let actionForSportCar: ActionForCar = .overlock(5.3)

// Задание 4: Переопределение методов в подклассах
// Описание: Переопределите метод действия в каждом подклассе, чтобы он соответствовал специфике объекта.
// Требования:
// Удостоверьтесь, что метод действия в каждом подклассе адекватно отражает специфические действия для этого класса.
// Подсказки:
// Используйте ключевое слово override для переопределения методов в подклассах.
//
// Ожидаемый результат:
// Метод действия в TrunkCar и SportCar, каждый из которых реализует действия, связанные со специфическими свойствами этих подклассов.

class TrunkCar2: Car {
    var cargoCapacity: Double
    var cargoType: String
    
    init(brand: String, model: String, year: Int, cargoCapacity: Double, cargoType: String) {
        self.cargoCapacity = cargoCapacity
        self.cargoType = cargoType
        super.init(brand: brand, model: model, year: year)
    }
    
    override func loadCargo(weight: Double) {
        print("Груз загружен на \(weight) кг.")
    }
    
    override func uploadCargo(weight: Double) {
        print("Груз выгружен \(weight) кг.")
    }
}

class SportCar2: Car {
    var maxSpeed: Double
    var overlock: Double
    
    init(brand: String, model: String, year: Int, maxSpeed: Double, overlock: Double) {
        self.maxSpeed = maxSpeed
        self.overlock = overlock
        super.init(brand: brand, model: model, year: year)
    }
    
    override func overlocking() {
        print("\(brand) \(model) разгоняется.")
    }
    
    override func braking() {
        print("\(brand) \(model) тормозит.")
    }
}
