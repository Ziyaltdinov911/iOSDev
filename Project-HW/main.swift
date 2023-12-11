//
//  main.swift
//  Project-HW
//
//  Created by Камиль Байдиев on 10.12.2023.
//

import Foundation

//MARK: - Task 1. Описание структур SportCar и TrunkCar
//Задание 1: Описание структур SportCar и TrunkCar
// Описание: Создайте две структуры, представляющие разные типы автомобилей: спортивный автомобиль и грузовик.
// Требования:
// Каждая структура должна включать следующие свойства: марку авто, год выпуска, объем багажника/кузова, состояние двигателя (запущен/остановлен), состояние окон (открыты/закрыты), текущий объем багажника.
// Подсказки:
// Рассмотрите использование Bool для свойств состояния двигателя и окон.
//
// Ожидаемый результат:
// Две структуры с требуемыми свойствами и их типами данных.

struct SportCar {
    var brand: String
    var year: Int
    var trunkVolume: Double
    var engineRunning: Bool
    var windowsOpen: Bool
    var currentTrunkVolume: Double
}

struct TrunkCar {
    var brand: String
    var year: Int
    var cargoVolume: Double
    var engineRunning: Bool
    var windowsOpen: Bool
    var currentCargoVolume: Double
}
