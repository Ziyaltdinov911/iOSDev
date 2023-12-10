//
//  main.swift
//  Project-HW
//
//  Created by Камиль Байдиев on 10.12.2023.
//

import Foundation

// имитация запроса в сеть
// возможные сбои - сервер не отвечает, отсутствуует подключение к интернету
// данные получены успешно

//1 -  Задание: Времена года и их температура
// Описание: Создайте приложение, которое отображает среднюю температуру для различных времен года.
// Требования:
// Перечисление "Времена года»: Создайте перечисление Season с четырьмя вариантами: Winter, Spring, Summer и Fall.
// Средняя температура: Каждому времени года должна соответствовать средняя температура. Используйте свойство вычисляемого типа (computed property) для этой цели.
// Вывод температуры: Реализуйте функцию, которая выводит среднюю температуру для выбранного времени года.
// Ожидаемый результат: При запуске приложения можно получить среднюю температуру для любого из четырех времен года.
//

enum Season {
    case Winter
    case Spring
    case Summer
    case Fall
    
    var averageTemp: Double {
        
        switch self {
        case .Winter:
           return 0
        case .Spring:
           return 20
        case .Summer:
            return 30
        case .Fall:
            return 15
        }
    }
    
    func showTemp() {
        print("Средняя температура для времени года \(self) - \(self.averageTemp)")
    }
}

let currentSeason = Season.Fall
currentSeason.showTemp()

//2 -  Задание: Информация о транспортных средствах
//Описание: Создайте приложение, которое предоставляет информацию о различных видах транспортных средств, таких как их максимальная скорость.
//Требования:
//Перечисление "Транспорт":  Создайте перечисление Transport с различными типами транспортных средств, такими как автомобиль, велосипед, поезд и самолет.
//Максимальная скорость: Для каждого транспортного средства укажите его максимальную скорость. Используйте ассоциативные значения для этой цели.
//Вывод информации: Реализуйте функцию, которая выводит максимальную скорость для выбранного транспортного средства.
//Ожидаемый результат: Пользователь может узнать максимальную скорость любого из указанных транспортных средств.

enum Transport: String {
    case Car
    case Bicycle
    case Train
    case Airplane
    
    var maxSpeedForTransport: Double {
        switch self {
        case .Car:
            return 180.0
        case .Bicycle:
            return 80.0
        case .Train:
            return 250.0
        case .Airplane:
            return 1200.0
        }
    }
    
    func showMaxSpeed() {
        print("Максимальная скорость для \(self.rawValue) - \(self.maxSpeedForTransport) км/ч")
    }
}

let selectTransportMaxSpeed = Transport.Train
selectTransportMaxSpeed.showMaxSpeed()

//3 -  Задание: Статусы платежей
// Описание: Создайте систему учета статусов платежей, которая позволяет отслеживать различные этапы обработки платежа.
// Требования:
// Перечисление "Статус платежа»: Создайте перечисление PaymentStatus со статусами: Неоплачено, В обработке, Оплачено, Ошибка.
// Дополнительная информация: Некоторые статусы требуют дополнительной информации. Например, для оплаченного статуса нужна дата оплаты, а для статуса ошибки - сообщение об ошибке. Используйте ассоциативные значения для сохранения этой информации.
// Вывод информации: Реализуйте функционал, который позволяет пользователю узнать дату оплаты для определенного платежа или причину ошибки.
// Ожидаемый результат: Пользователь может узнать детали каждого платежа в зависимости от его статуса.

enum PaymentStatus {
    case Unpaid
    case Processing
    case Paid(date: Date)
    case Error(message: String)
    
    func showDetails() {
        switch self {
        case .Unpaid:
            print("Платёж не прошёл. Неоплачено")
        case .Processing:
            print("Платёж в обработке")
        case .Paid(date: let date):
            let dateFormat = DateFormatter()
            dateFormat.dateFormat = "yyyy-MM-dd"
            print("Платёж прошёл. Дата платежа: \(dateFormat.string(from: date))")
        case .Error(message: let message):
            print("Платёж не прошёл. \(message)")
        }
    }
}



let paymentDate = Date()
let paymentStatus = PaymentStatus.Paid(date: paymentDate)
paymentStatus.showDetails()

//4 -  Задание: Рекомендации по режимам камеры
//Описание: Создайте систему, которая дает рекомендации по использованию различных режимов камеры.
//Требования:
//Перечисление "Режим камеры»: Создайте перечисление CameraMode с режимами: Авто, Портрет, Ландшафт, Ночной.
//Рекомендации: Для каждого режима предоставьте рекомендацию, когда и как лучше его использовать.
//Получение рекомендации: Реализуйте функционал, который позволяет пользователю получить рекомендацию для выбранного режима камеры.
//Ожидаемый результат: При выборе определенного режима камеры пользователь получает рекомендацию по его использованию.

enum ModesForCam {
    case Auto
    case Portrait
    case Night
    case Landscape
    
    func giveRecomendation() -> String {
        switch self {
        case .Auto:
            return "Режим Auto подходит для общих условий съемки. Камера сама выберет оптимальные настройки."
        case .Portrait:
            return "Режим Portrait идеально подходит для фотографий людей, создавая эффект размытого фона."
        case .Landscape:
            return "Режим Landscape рекомендуется для съемки природы и пейзажей, чтобы передать все детали и широту сцены."
        case .Night:
            return "Режим Night предназначен для фотографий при недостаточном освещении. Используйте его в темное время суток."
        }
    }
}

func showRecomedation(mode: ModesForCam) {
    let recomendation = mode.giveRecomendation()
    print("Вы переключились в режим \(mode). \(mode.giveRecomendation()).")
}

let selectMode = ModesForCam.Auto
showRecomedation(mode: selectMode)

//5 - Задание: Диеты животных в зоопарке
// Описание: Создайте информационную систему о типах животных в зоопарке и их предпочтениях в пище.
// Требования:
// Перечисление "Тип животного»: Создайте перечисление AnimalType с типами: Хищник, Травоядное, Насекомое.
// Диета: Укажите, что ест каждый тип животного.
// Получение информации о диете: Реализуйте функционал, который позволяет узнать, что ест определенное животное.
// Ожидаемый результат:  Пользователь может узнать, что ест определенное животное в зоопарке.

enum AnimalType {
    case Predator
    case Herbivore
    case Insectivore
    
    func getDiet() -> String {
        switch self {
        case .Predator:
            return "Хищники едят других животных."
        case .Herbivore:
            return "Травоядные питаются растениями."
        case .Insectivore:
            return "Насекомые питаются другими насекомыми или растениями."
        }
    }
}

func getAnimalDiet(type: AnimalType) -> String {
    let animalDiet = type.getDiet()
    return animalDiet
}

let predatorsType = AnimalType.Predator
let herbivoresType = AnimalType.Herbivore
let insectivoreType = AnimalType.Insectivore

print("Волк: \(getAnimalDiet(type: predatorsType))")

//6 - Задание: Отслеживание статуса заказа в ресторане
//Описание: Разработайте систему, которая позволяет отслеживать статус приготовления заказа в ресторане.
//Требования:
//Перечисление "Статус заказа»: Создайте перечисление OrderStatus со статусами: Принят, Готовится, Готов к подаче, Доставляется.
//Следующий статус: Реализуйте функционал, который показывает, какой статус будет следующим после текущего.
//Получение следующего статуса: Пользователь может узнать, какой статус будет следующим для его заказа.
//Ожидаемый результат: Пользователь может отслеживать, на каком этапе находится его заказ.

enum OrderStatus {
    case Accepted
    case BeingPrepared
    case ReadyForServing
    case BeingDelivered
    
    func nextOrderStatus() -> OrderStatus? {
        switch self {
        case .Accepted:
            return .BeingPrepared
        case .BeingPrepared:
            return .ReadyForServing
        case .ReadyForServing:
            return .BeingDelivered
        case .BeingDelivered:
            return nil
//            return print("Заказ завершён")
        }
    }
}

func trackOrderStatus(currentStatus: OrderStatus) {
    print("Текущий статус заказа: \(currentStatus)")
    if let nextOrderStatus = currentStatus.nextOrderStatus() {
        print("Следующий статус заказа: \(nextOrderStatus.nextOrderStatus()!)")
    } else {
        print("Заказ завершён")
    }
}

let currentOrderStatus = OrderStatus.BeingDelivered
trackOrderStatus(currentStatus: currentOrderStatus)

//7 - Задание: Информация о номерах в отеле
// Описание: Создайте систему, которая предоставляет информацию о различных типах номеров в отеле.
// Требования:
// Перечисление "Тип комнаты»: Создайте перечисление RoomType с типами номеров: Одноместный, Двухместный, Люкс.
// Информация о комнате: Для каждого типа комнаты укажите его стоимость и количество доступных номеров.
// Получение информации о комнате: Пользователь может узнать стоимость и количество доступных номеров для выбранного типа комнаты.
// Ожидаемый результат: Пользователь может узнать детали о различных типах номеров в отеле.
//

enum RoomType {
    case Single, Double, Luxe
    
    var price: Double {
        switch self {
        case .Single:
            return 5400
        case .Double:
            return 6100
        case .Luxe:
            return 6900
        }
    }
    
    var availableRoomsCount: Int {
        switch self {
        case .Single:
            return 47
        case .Double:
            return 22
        case .Luxe:
            return 19
        }
    }
    
    func getInfoAboutRoom() -> String {
        return "Номер: \(self).\nСтоимость: \(price)₽.\nКоличество свободных номеров: \(availableRoomsCount)"
    }
}

func showInfoAboutRoom(room: RoomType) {
    print(room.getInfoAboutRoom())
}

let selectRoomType = RoomType.Luxe
showInfoAboutRoom(room: selectRoomType)


