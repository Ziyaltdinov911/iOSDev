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
