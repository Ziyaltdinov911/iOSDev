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
  
// Задание 2: Создание перечисления действий с автомобилем
// Описание: Определите перечисление, которое содержит различные действия, которые могут быть предприняты с автомобилем.
// Требования:
// Включите следующие действия: запустить/остановить двигатель, открыть/закрыть окна, погрузить/выгрузить груз определенного объема.
// Подсказки:
// Учитывайте, что действия по загрузке/выгрузке должны учитывать доступный объем багажника/кузова.
//
// Ожидаемый результат:
// Перечисление, в котором содержатся все необходимые действия с автомобилем.

enum CarActions {
    enum Engine: String {
        case start = "Двигатель заведён"
        case stop = "Двигатель заглушен"
    }
    
    enum Windows: String {
        case open = "Окна открыты"
        case close = "Окна закрыты"
    }
    
    enum CargoVol {
        case load
        case unload
    }
    
    
    case performEngine(Engine)
    case performWindows(Windows)
    case performCargoVol(CargoVol)
}

// Задание 3: Добавление метода для изменения свойств автомобиля
// Описание: В каждую структуру добавьте метод, который принимает один аргумент типа перечисления и изменяет свойства структуры в соответствии с действием.
// Требования:
// Метод должен корректно обрабатывать каждое действие из перечисления.
// Убедитесь, что метод обновляет свойства структуры соответствующим образом.
// Подсказки:
// Внимательно обработайте ситуации, когда действие невозможно выполнить из-за текущего состояния объекта (например, погрузка груза превышает доступный объем).
// Ожидаемый результат:
// Метод в каждой структуре, который принимает действие в виде перечисления и модифицирует свойства структуры соответствующим образом.
// Метод может выводить результат действия в консоль (например, "Двигатель заведён" или "Недостаточно места в багажнике").

extension SportCar {
    mutating func perform(action: CarActions) {
        switch action {
        case .performEngine(let engineAction):
            switch engineAction {
            case .start:
                if !engineRunning {
                    engineRunning = true
                    print("Двигатель запущен")
                } else {
                    print("Двигатель уже запущен")
                }
            case .stop:
                if engineRunning {
                    engineRunning = false
                    print("Двигатель заглушен")
                } else {
                    print("Двигатель уже заглушен")
                }
            }
        case .performWindows(let windowsAction):
            switch windowsAction {
            case .open:
                if engineRunning {
                    if !windowsOpen {
                        windowsOpen = true
                        print("Окна открыты")
                    } else {
                        print("Окна уже открыты")
                    }
                } else {
                    print("Двигатель выключен, окна нельзя открыть")
                }
            case .close:
                if engineRunning {
                    if windowsOpen {
                        windowsOpen = false
                        print("Окна закрыты")
                    } else {
                        print("Окна уже закрыты")
                    }
                } else {
                    print("Двигатель выключен, окна нельзя закрыть")
                }
            }
        case .performCargoVol(let cargoVolAction):
            switch cargoVolAction {
            case .load:
                print("Груз загружен")
            case .unload:
                print("Груз выгружен")
            }
        }
    }
}

extension TrunkCar {
    mutating func perform(action: CarActions) {
        switch action {
        case .performEngine(let engineAction):
            switch engineAction {
            case .start:
                if !engineRunning {
                    engineRunning = true
                    print("Двигатель запущен")
                } else {
                    print("Двигатель уже запущен")
                }
            case .stop:
                if engineRunning {
                    engineRunning = false
                    print("Двигатель заглушен")
                } else {
                    print("Двигатель уже заглушен")
                }
            }
        case .performWindows(let windowsAction):
            switch windowsAction {
            case .open:
                if engineRunning {
                    if !windowsOpen {
                        windowsOpen = true
                        print("Окна открыты")
                    } else {
                        print("Окна уже открыты")
                    }
                } else {
                    print("Двигатель выключен, окна нельзя открыть")
                }
            case .close:
                if engineRunning {
                    if windowsOpen {
                        windowsOpen = false
                        print("Окна закрыты")
                    } else {
                        print("Окна уже закрыты")
                    }
                } else {
                    print("Двигатель выключен, окна нельзя закрыть")
                }
            }
        case .performCargoVol(let cargoVolAction):
            switch cargoVolAction {
            case .load:
                print("Груз загружен")
            case .unload:
                print("Груз выгружен")
            }
        }
    }
}
