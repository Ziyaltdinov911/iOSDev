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

// Задание 4: Инициализация и использование структур
// Описание: Инициализируйте несколько экземпляров каждой структуры и выполните различные действия с ними, используя метод из предыдущего задания.
// Требования:
// Создайте различные объекты каждой структуры и примените к ним различные действия из перечисления.
// Подсказки:
// Обратите внимание на то, как изменяется состояние объекта после каждого действия и проверьте его, выводя свойства объекта в консоль.
//
// Ожидаемый результат:
// Код, который создает несколько экземпляров каждой структуры и вызывает их методы, передавая различные действия из перечисления.

var ferrari = SportCar(brand: "Ferrari", year: 2022, trunkVolume: 100, engineRunning: false, windowsOpen: false, currentTrunkVolume: 0)
var volvoTruck = TrunkCar(brand: "Volvo", year: 2022, cargoVolume: 500, engineRunning: false, windowsOpen: false, currentCargoVolume: 0)

print("Начальное состояние Ferrari: \(ferrari)")
print("Начальное состояние Volvo Truck: \(volvoTruck)")

ferrari.perform(action: .performEngine(.start))
ferrari.perform(action: .performWindows(.open))
ferrari.perform(action: .performCargoVol(.load))

volvoTruck.perform(action: .performEngine(.start))
volvoTruck.perform(action: .performCargoVol(.load))
volvoTruck.perform(action: .performWindows(.open))

// Задание 5: Вывод свойств объектов
// Описание: Выведите в консоль свойства каждого созданного объекта.
// Требования:
// После выполнения действий над объектами, выведите актуальные данные об их свойствах.
// Подсказки:
// Можете использовать функцию print в Swift для вывода данных в консоль.
//
// Ожидаемый результат:
// Код, который создает несколько экземпляров каждой структуры и вызывает их методы, передавая различные действия из перечисления.

print("Состояние Ferrari после действий: \(ferrari)")
print("Состояние Volvo Truck после действий: \(volvoTruck)")
