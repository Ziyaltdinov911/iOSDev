//
//  main.swift
//  Project-HW
//
//  Created by Камиль Байдиев on 10.12.2023.
//

import Foundation

//MARK: - Task 1. Разработка и тестирование боевой системы в ролевой игре с улучшениями для Warrior и Mag.
//Задача: Разработка и тестирование боевой системы в ролевой игре с улучшениями для Warrior и Mag
//
//Описание задачи:
//
//Вам предоставлена задача расширить систему боевых единиц для ролевой игры, внедрив уникальные суперспособности для классов Warrior и Mag. Класс Fighter остается базовым, а классы-наследники получают новый метод useUltimateAbility().
//
//Требования:
//
//Базовый класс Fighter:
//
//Добавьте новый метод useUltimateAbility(), который по умолчанию выводит сообщение о том, что у бойца нет уникальной способности.
//Классы-наследники Warrior и Mag:
//
//Добавьте уникальные суперспособности для каждого класса в метод useUltimateAbility().
//Warrior может использовать "Мощный Удар", который увеличивает урон бойца в следующей атаке.
//Mag может использовать "Огненный Взрыв", который наносит урон всем врагам на поле боя.
//Тестирование:
//
//Расширьте функции startFighter1() и startFighter2() так, чтобы они вызывали useUltimateAbility() после нескольких обычных атак.
//Убедитесь, что суперспособности работают корректно и выводят соответствующие сообщения.
//
//Завершение программы:
//Обеспечьте, чтобы суперспособности были специфичными для каждого класса и внедрены в код без нарушения принципов объектно-ориентированного программирования.
//Поддерживайте чистоту и читаемость кода.

class Fighter {
    func useUltimateAbility() {
        print("У бойца нет уникальной способности")
    }
}

class Warrior: Fighter {
    override func useUltimateAbility() {
         print("Warrior использует Мощный Удар. Урон будет увеличен.")
    }
}

class Mag: Fighter {
    override func useUltimateAbility() {
        print("Mag использует Огненный Взрыв. Все враги получают урон.")
    }
}

func startFighter1(fighter: Fighter) {
    print("Fighter1 атакует")
    fighter.useUltimateAbility()
    print("Fighter1 совершил атаку")
}

func startFighter2(fighter: Fighter) {
    print("Fighter2 атакует")
    fighter.useUltimateAbility()
    print("Fighter2 совершил атаку")
}

let fighter1 = Warrior()
let fighter2 = Mag()

startFighter1(fighter: fighter1)
startFighter2(fighter: fighter2)

//MARK: - Task 2. Разработка и тестирование иерархии классов животных.
//Задача 2: Разработка и тестирование иерархии классов животных
//
//Описание задачи:
//
//Вам предоставлена задача создания иерархии классов животных для моделирования кошек и собак. Класс Animal является базовым, а классы Cat и Dog представляют собой конкретные типы животных.
//
//Требования:
//
//Базовый класс Animal:
//
//Содержит свойство name (имя животного).
//Имеет инициализатор required init(name: String).
//Объявляет вычисляемое свойство type, возвращающее строковое представление типа животного (кот, собака или животное по умолчанию).
//Реализует метод sleep(), который возвращает строку, представляющую состояние сна животного.
//Класс Cat:
//
//Наследуется от Animal.
//Содержит свойство sound (звук, который издает кот).
//Имеет инициализатор init(name: String, sound: String).
//Переопределяет метод sleep() для добавления информации о типе животного и его состоянии сна.
//Объявляет метод play(), выводящий сообщение о том, что кот играет.
//Класс Dog:
//
//Наследуется от Animal.
//Содержит свойство sound (звук, который издает собака).
//Имеет инициализатор init(name: String, sound: String).
//Переопределяет метод sleep() для добавления информации о типе животного и его состоянии сна.
//Объявляет метод play(), выводящий сообщение о том, что собака играет.
//Тестирование:
//
//Создайте экземпляры классов Cat и Dog с различными характеристиками (имя и звук).
//Выведите информацию о типе животного с использованием свойства type.
//Проверьте метод sleep(), убедившись, что он корректно отображает тип и состояние сна животного.
//Вызовите метод play() для каждого класса и убедитесь, что соответствующее сообщение выводится.
//Дополнительно:
//
//Создайте еще один экземпляр класса Cat без указания звука, чтобы проверить, что по умолчанию устанавливается "Мяу".
//Выведите информацию о новом экземпляре и убедитесь, что звук корректно установлен.
//Завершение программы:
//
//После завершения тестирования выведите сообщения о свойствах звуков для кота и собаки.
//Примечание:
//
//Поддерживайте код в чистом и читаемом виде, следуя принципам объектно-ориентированного программирования.

class Animal {
    let name: String
    
    required init(name: String) {
        self.name = name
    }
    
    var type: String {
        return "Животное"
    }
    
    func sleep() -> String {
        return "\(type) \(name) спит"
    }
}

class Cat: Animal {
    let sound: String
    
    init(name: String, sound: String = "Мяу") {
        self.sound = sound
        super.init(name: name)
    }
    
    required init(name: String) {
        self.sound = "Мяу"
        super.init(name: name)
    }
    
    override var type: String {
        return "Кот"
    }
    
    override func sleep() -> String {
        return "\(super.sleep()) и мурлычет"
    }
    
    func play() -> String {
        return "\(type) \(name) играет"
    }
}

class Dog: Animal {
    let sound: String
    
    init(name: String, sound: String = "Гав") {
        self.sound = sound
        super.init(name: name)
    }
    
    required init(name: String) {
        self.sound = "Гав"
        super.init(name: name)
    }
    
    override var type: String {
        return "Собака"
    }
    
    override func sleep() -> String {
        return "\(super.sleep()) и храпит"
    }
    
    func play() -> String {
        return "\(type) \(name) играет"
    }
}

let cat1 = Cat(name: "Барсик", sound: "Мур")
let dog1 = Dog(name: "Бобик", sound: "Гуф")

let cat2 = Cat(name: "Мурзик")
let dog2 = Dog(name: "Шарик")

print("\(cat1.type):\n\(cat1.sleep())\n\(cat1.play())\n")
print("\(dog1.type):\n\(dog1.sleep())\n\(dog1.play())\n")

print("\(cat2.type):\n\(cat2.sleep())\n\(cat2.play())\n")
print("\(dog2.type):\n\(dog2.sleep())\n\(dog2.play())\n")

