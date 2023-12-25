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

//MARK: - Task 3

//после того как выполните 1 - Задание, измените вашу игру Бойцовский клуб добавив к ним протоколы ->
//
//Задача 3: Разработка и использование протоколов для представления людей и бойцов в игре
//
//Описание задачи:
//
//Вам предоставлена задача разработать протоколы для представления людей и бойцов в игровой системе. Каждый боец должен обладать уникальными характеристиками и методами. Ваша задача - определить протоколы, расширения и структуры, которые позволят корректно представить эти концепции.
//
//Требования:
//
//Протокол PeopleProtocol:
//
//Содержит свойства name (имя) и _strength (сила) с геттерами и сеттерами.
//Определяет метод startTrainingFight(), выводящий сообщение о начале тренировки.
//Протокол FighterProtocol:
//
//Требует реализации свойства typeFighter (тип бойца) типа TypeFighter.
//Протокол AttackProtocol:
//
//Наследуется от PeopleProtocol.
//Определяет метод attacking() -> Int, возвращающий урон бойца.
//Перечисление TypeFighter:
//
//Структура People:
//
//Реализует протокол PeopleProtocol.
//Содержит свойства name и _strength.
//Структуры Warrior и Mag:
//
//Реализуют протоколы FighterProtocol и AttackProtocol.
//Содержат свойства name и _strength.
//Тестирование:
//
//Создайте экземпляры структур People, Warrior и Mag с различными характеристиками.
//Выведите информацию о каждом созданном объекте.
//Проверьте работу методов startTrainingFight() и attacking() для объектов, где это применимо.
//Выведите информацию о типе бойцов и уроне, который они могут нанести.
//Примечание:
//
//Обеспечьте, чтобы реализация протоколов и структур была логичной и соответствовала задаче.
//Поддерживайте код в чистом и читаемом виде, следуя принципам объектно-ориентированного программирования.

protocol PeopleProtocol {
    var name: String { get set }
    var _strength: Int { get set }

    func startTrainingFight()
}

protocol FighterProtocol {
    var typeFighter: TypeFighter { get }
}

protocol AttackProtocol: PeopleProtocol {
    func attacking() -> Int
}

enum TypeFighter {
    case warrior
    case mag
}

struct People: PeopleProtocol {
    var name: String
    var _strength: Int

    init(name: String, strength: Int) {
        self.name = name
        self._strength = strength
    }

    func startTrainingFight() {
        print("\(name) начал(а) тренировку боя.")
    }
}

struct WarriorForProtocol: FighterProtocol, AttackProtocol {
    func startTrainingFight() {
        
    }
    
    var name: String
    var _strength: Int

    var typeFighter: TypeFighter {
        return .warrior
    }

    func attacking() -> Int {
        return _strength * 2
    }
}

struct MagForProtocol: FighterProtocol, AttackProtocol {
    func startTrainingFight() {
        
    }
    
    var name: String
    var _strength: Int

    var typeFighter: TypeFighter {
        return .mag
    }

    func attacking() -> Int {
        return _strength * 3
    }
}

let man = People(name: "Иван", strength: 10)
let warrior = WarriorForProtocol(name: "Воин", _strength: 15)
let mag = MagForProtocol(name: "Маг", _strength: 12)

print("Человек: \(man.name), Сила: \(man._strength)")
man.startTrainingFight()

print("Воин: \(warrior.name), Сила: \(warrior._strength), Тип: \(warrior.typeFighter)")
print("Атака воина: \(warrior.attacking())")

print("Маг: \(mag.name), Сила: \(mag._strength), Тип: \(mag.typeFighter)")
print("Атака мага: \(mag.attacking())")

//Задача 3.1: Разработка и использование протоколов для представления людей и бойцов в игре
//
//Описание задачи:
//
//Вам предоставлена задача разработать протоколы для представления людей и бойцов в игровой системе. Каждый боец должен обладать уникальными характеристиками и методами. Ваша задача - определить протоколы, расширения и структуры, которые позволят корректно представить эти концепции.
//
//Требования:
//
//Протокол PeopleProtocol:
//
//Содержит свойства name (имя) и _strength (сила) с геттерами и сеттерами.
//Определяет метод startTrainingFight(), выводящий сообщение о начале тренировки.
//Протокол FighterProtocol:
//
//Требует реализации свойства typeFighter (тип бойца) типа TypeFighter.
//Протокол AttackProtocol:
//
//Наследуется от PeopleProtocol.
//Определяет метод attacking() -> Int, возвращающий урон бойца.
//Перечисление TypeFighter:
//
//Структура People:
//
//Реализует протокол PeopleProtocol.
//Содержит свойства name и _strength.
//Структуры Warrior и Mag:
//
//Реализуют протоколы FighterProtocol и AttackProtocol.
//Содержат свойства name и _strength.
//Тестирование:
//
//Создайте экземпляры структур People, Warrior и Mag с различными характеристиками.
//Выведите информацию о каждом созданном объекте.
//Проверьте работу методов startTrainingFight() и attacking() для объектов, где это применимо.
//Выведите информацию о типе бойцов и уроне, который они могут нанести.
//Примечание:
//
//Обеспечьте, чтобы реализация протоколов и структур была логичной и соответствовала задаче.
//Поддерживайте код в чистом и читаемом виде, следуя принципам объектно-ориентированного программирования.
protocol FighterProtocol2 {
    var name: String { get set }
    var typeFighter: String { get }
    var weapon: Weapon { get set }
    var hp: Int { get set }
    var strength: Int { get }
    
    func reduceDamage()
    func attack()
    func balanceHP()
    func isDead() -> Bool
}

protocol Weapon {
    var nameWeapon: String { get }
    var owner: FighterProtocol2? { get set }
}

class Fighter2: FighterProtocol2 {
    var name: String
    var typeFighter: String {
        return "какой-то боец"
    }
    var weapon: Weapon
    private var _hp: Int = 0
    
    var hp: Int {
        get { return _hp }
        set {
            _hp = newValue
        }
    }
    
    var strength: Int {
        return 1
    }
    
    init(name: String, hp: Int, weapon: Weapon) {
        self.name = name
        self.weapon = weapon
        self.hp = hp
    }
    
    func reduceDamage() {
        let damage = strength * 10
        print("нанес \(damage) урона")
        _hp = max(0, _hp - damage)
    }
    
    func attack() {
        print("\(typeFighter), \(name), ударил и", terminator: " ")
    }
    
    func balanceHP() {
        print("Осталось жизней \(_hp)")
    }
    
    func isDead() -> Bool {
        return _hp <= 0
    }
    
    deinit {
        print("\(typeFighter) класс уничтожился")
    }
}

protocol MagProtocol: FighterProtocol2 {
    var strength: Int { get }
}

class Mag2: MagProtocol, FighterProtocol2 {
    var typeFighter: String {
        return "Mag"
    }

    var typeFighter2: TypeFighter
    var name: String
    var weapon: Weapon
    private var _hp: Int = 100

    var strength: Int {
        return 50
    }

    var hp: Int {
        get { return _hp }
        set {
            _hp = newValue
        }
    }

    init(name: String, weapon: Weapon) {
        self.name = name
        self.weapon = weapon
        self.typeFighter2 = .mag
    }

    func attack() {
        if isDead() {
            print("\(name) мертв")
        } else {
            print("\(typeFighter2), \(name), ударил и", terminator: " ")
        }
    }

    func reduceDamage() {
        let damage = strength * 10
        print("нанес \(damage) урона")
        _hp = max(0, _hp - damage)
    }

    func balanceHP() {
        print("Осталось жизней \(_hp)")
    }

    func isDead() -> Bool {
        return _hp <= 0
    }
}
