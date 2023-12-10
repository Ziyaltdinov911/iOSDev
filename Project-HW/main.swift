//
//  main.swift
//  HW3
//
//  Created by Камиль Байдиев on 2.12.2023.
//
 
import Foundation

// MARK: - Task 1. Сортировка чисел
//1. Задание: Сортировка чисел
//
//Описание: Разработайте функцию, которая сортирует массив чисел в порядке возрастания без использования стандартной функции sort().
//Требования:
//Функция сортировки: Создайте функцию, которая принимает массив чисел.
//Функция должна возвращать массив, отсортированный в порядке возрастания.
//Ожидаемый результат: При передаче массива чисел в функцию, она вернет отсортированный массив.

func customSort(_ inputArray: [Int]) -> [Int] {
    var sortedArray = inputArray
    
    for i in .zero..<sortedArray.count {
        for j in .zero..<sortedArray.count - 1 - i {
            if sortedArray[j] > sortedArray[j + 1] {
                let temp = sortedArray[j]
                sortedArray[j] = sortedArray[j + 1]
                sortedArray[j + 1] = temp
            }
        }
    }
    
    return sortedArray
}

// MARK: - Task 2. Проверка палиндрома
//2. Задание: Проверка палиндрома
//
//Описание: Разработайте функцию, которая проверяет, является ли предоставленная строка палиндромом.
//Требования:
//Функция проверки: Создайте функцию, принимающую строку в качестве параметра.
//Функция должна возвращать true, если строка является палиндромом, и false в противном случае.
//Ожидаемый результат: При передаче строки в функцию, она вернет true для палиндромов и false в остальных случаях.

let inputNumbers = [4, 2, 7, 1, 9, 3]
let sortedNumbers = customSort(inputNumbers)

print("Исходный массив:", inputNumbers)
print("Отсортированный массив:", sortedNumbers)

func checkPalindrome(string str: String) -> Bool {
    return str.lowercased() == String(str.reversed()).lowercased()
}

// MARK: - Task 3. Сумма элементов массива
//3. Задание: Сумма элементов массива
//
//Описание: Разработайте функцию, которая возвращает сумму всех элементов массива целых чисел.
//Требования:
//Функция суммирования: Создайте функцию, принимающую массив целых чисел.
//Функция должна возвращать сумму всех элементов массива.
//Ожидаемый результат: При передаче массива чисел в функцию, она вернет их сумму.
//]

let arrayInt = [6, 14, 8, 34, 65]

func sumOfIntArray(array number: [Int]) -> Int {
    var sum = 0
    
    for num in number {
        sum += num
    }
    
    return sum
}

let res = sumOfIntArray(array: arrayInt)
print(res)

// MARK: - Task 4. Конвертация температуры
//4. Задание: Конвертация температуры
//
//Описание: Разработайте функцию для конвертации температуры из градусов Цельсия в градусы Фаренгейта.
//Формула: fahrenheit = (celsius * 9.0/5.0) + 32.0
//Требования:
//Функция конвертации: Создайте функцию, принимающую температуру в градусах Цельсия.
//Функция должна возвращать эквивалент температуры в градусах Фаренгейта.
//Ожидаемый результат: При передаче температуры в градусах Цельсия в функцию, она вернет ее эквивалент в градусах Фаренгейта.

func cTemperatureToF(celsius: Double) -> Double {
    return (celsius * 9.0/5.0) + 32.0
}

let cTemperature = 25.0
let fTemperature = cTemperatureToF(celsius: cTemperature)

print("Температура в градусах Цельсия: \(cTemperature)°C")
print("Ровняется в градусах Фаренгейта: \(fTemperature)°F")

// MARK: - Task 5. Записная книжка
//5. Задание: Записная книжка
//
//Описание: Создайте программу для управления записной книжкой, содержащей имя, телефон и электронную почту.
//Требования:
//Создайте массив для хранения записей.
//Функция поиска: Напишите функцию для поиска записи по имени.
//Ожидаемый результат: При поиске по имени функция вернет соответствующую запись.

var contactName = "Vadim"
var contactsBook: [String: (phone: String, email: String)] = [:]

func addContact(name: String, phone: String, email: String) {
    return contactsBook[name] = (phone, email)
}

func findContactName(name: String) -> (phone: String, email: String)? {
    return contactsBook[name]
}

addContact(name: contactName, phone: "1231223", email: "Vadim11@mail.ru")

if let contactFound = findContactName(name: contactName) {
    print("Контакт найден\nИмя \(contactName)\nТелефон:\(contactFound.phone)\nEmail: \(contactFound.email)")
} else {
    print("Контакт с именем \(contactName) не найден")
}

// MARK: - Task 6. Перестановка элементов массива
//6. Задание: Перестановка элементов массива
//
//Описание: Разработайте функцию, которая изменяет порядок элементов в массиве, помещая первый элемент в конец и последний - в начало.
//Требования:
//Функция перестановки: Создайте функцию, принимающую массив.
//Функция должна возвращать новый массив с измененным порядком элементов.
//Ожидаемый результат: Первый элемент массива станет последним, а последний - первым.

func rearrangeArray(arr: [Any]) -> [Any] {
    var newArray = arr

    if newArray.count >= 2 {
        let firstElement = newArray.removeFirst()
        newArray.append(firstElement)
        
        let lastElement = newArray.removeLast()
        newArray.insert(lastElement, at: 0)
    }
    
    return newArray
}

let originalArray = [213, 13, 32, 56, 34]
let rearrangedArray = rearrangeArray(arr: originalArray)

print("Исходный массив: \(originalArray)")
print("Массив после сортировки: \(rearrangedArray)")

// MARK: - Task 7. Форматирование строки
//7. Задание: Форматирование строки
//
//Описание: Разработайте функцию, которая делает первую букву каждого слова в строке заглавной.
//Требования:
//Функция форматирования: Создайте функцию, принимающую строку.
//Функция должна возвращать строку, где каждое слово начинается с заглавной буквы.
//Ожидаемый результат: При передаче строки в функцию, каждое слово в строке начнется с заглавной буквы.
//

func formatString(_ inputString: String) -> String {
    var words = [String]()
    
    for word in inputString.split(separator: " ") {
        words.append(word.capitalized)
    }
    return words.joined(separator: " ")
    
}
let inputString = formatString("Мне нужно пойти покушать")

print(inputString)

// MARK: - Task 8. Конвертация дня недели
//8. Задание: Конвертация дня недели
//
//Описание: Разработайте функцию, которая преобразует день недели из строкового формата в числовой.
//Требования:
//Функция конвертации: Создайте функцию, принимающую день недели в форме строки.
//Функция должна возвращать соответствующий день недели в числовом формате.
//Ожидаемый результат: При передаче дня недели в форме строки, функция вернет его числовой эквивалент.
//

func DayOfWeek(day: String) -> Int {
    let weekdays = ["понедельник", "вторник", "среда", "четверг", "пятница", "суббота", "воскресенье"]
    
    if let index = weekdays.firstIndex(of: day.lowercased()) {
        return index + 1
    }
    
    return 0
}

let weekDay = DayOfWeek(day: "суббота")
print(weekDay)

// MARK: - Task 9. Уникальные символы
//9. Задание: Уникальные символы
//
//Описание: Разработайте функцию, которая определяет, состоит ли строка из уникальных символов.
//Требования:
//Функция проверки: Создайте функцию, принимающую строку.
//Функция должна возвращать true, если все символы уникальные, и false, если в строке есть повторяющиеся символы.
//Ожидаемый результат: При передаче строки в функцию, она определит, состоит ли строка из уникальных символов.
//

func uniqueCharacters(_ inputString: String) -> Bool {
    var uniqueCharacters = Set<Character>()

    for char in inputString {
        if uniqueCharacters.contains(char) {
            return false
        }

        uniqueCharacters.insert(char)
    }

    return true
}

let inputString1 = "abcdef"
let inputString2 = "hello"
let uniqueString1 = uniqueCharacters(inputString1)
let uniqueString2 = uniqueCharacters(inputString2)

// MARK: - Task 10. Слияние массивов
//10. Задание: Слияние массивов
//
//Описание: Разработайте функцию, которая объединяет два массива в один.
//Требования:
//Функция слияния: Создайте функцию, принимающую два массива.
//Функция должна возвращать новый массив, состоящий из элементов обоих массивов.
//Ожидаемый результат: При передаче двух массивов в функцию, она вернет один объединенный массив.
//

func unionArrays(_ firstArray: [Any], _ secondArray: [Any]) -> [Any] {
    firstArray + secondArray
}

let firstArray = ["hello", "6"]
let secondArray = ["word"]
let unionString = unionArrays(firstArray, secondArray)
print(unionString)

// MARK: - Task 11. Подсчет гласных
//11. Задание: Подсчет гласных
//Описание: Разработайте функцию, которая подсчитывает количество гласных в предоставленной строке.
//Требования:
//Функция подсчета: Создайте функцию, принимающую строку.
//Функция должна возвращать количество гласных букв в строке.
//Ожидаемый результат: При передаче строки в функцию, она вернет количество гласных в ней.
//

func countVowels(in inputString: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "Y"]
    let vowelsCount = inputString.filter { vowels.contains($0) }.count
    return vowelsCount
}

let inputVowelString = "iOS Junior Developer"
let vowelsCount = countVowels(in: inputVowelString)
print("Количество гласных в строке: \(vowelsCount)")

// MARK: - Task 12. Удаление дубликатов из массива
//12. Задание: Удаление дубликатов из массива
//
//Описание: Разработайте функцию, которая удаляет дубликаты из массива.
//Требования:
//Функция удаления: Создайте функцию, принимающую массив.
//Функция должна возвращать новый массив, который содержит все уникальные элементы исходного массива.
//Ожидаемый результат: При передаче массива в функцию, она вернет новый массив без дублирующихся элементов.
//

func removeDuplicates(_ array: [Int]) -> [Int] {
    var uniqueElements = Set<Int>()
    var resultArray = [Int]()

    for element in array {
        if uniqueElements.insert(element).inserted {
            resultArray.append(element)
        }
    }

    return resultArray
}

let intArray = [9, 43, 99, 19, 09, 99, 43, 34, 12, 312, 09, 99, 43, 34, 12, 312]
let newArray = removeDuplicates(intArray)
print("Массив без дубликатов: \(newArray)")

// MARK: - Task 13. Сумма всех чисел до N
//13. Задание: Сумма всех чисел до N
//
//Описание: Разработайте функцию, которая возвращает сумму всех чисел от 1 до N.
//Требования:
//Функция суммирования: Создайте функцию, принимающую число N.
//Функция должна возвращать сумму всех чисел от 1 до N.
//Ожидаемый результат: При передаче числа N в функцию, она вернет сумму всех чисел от 1 до N.
//

func sumToN(_ n: Int) -> Int {
    guard n > 0 else {
        return 0
    }

    var sum = 0
    for i in 1...n {
        sum += i
    }

    return sum
}

let n = 6
let result = sumToN(n)
print("Сумма: \(result)")

// MARK: - Task 14. Длинное слово в строке
//14. Задание: Длинное слово в строке
//
//Описание: Разработайте функцию, которая возвращает самое длинное слово в предоставленной строке.
//Требования:
//Функция поиска: Создайте функцию, принимающую строку.
//Функция должна возвращать самое длинное слово в строке.
//Ожидаемый результат: При передаче строки в функцию, она вернет самое длинное слово в этой строке.
//

func longestWord(in inputString: String) -> String {
    let words = inputString.components(separatedBy: .whitespacesAndNewlines)
    guard let longest = words.max(by: { $0.count < $1.count }) else {
        return " "
    }
    return longest
}

let longesWordsRes = longestWord(in: "Разработайте функцию, которая возвращает самое длинное слово в строке")
print(longesWordsRes)

// MARK: - Task 15. Сокращение строки
//15. Задание: Сокращение строки
//
//Описание: Разработайте функцию, которая сокращает строку до заданного числа символов N, добавляя в конец "…", если строка была усечена.
//Требования:
//Функция сокращения: Создайте функцию, принимающую строку и число N.
//Функция должна возвращать строку, сокращенную до N символов, с добавлением "…" в конце, если строка была усечена.
//Ожидаемый результат: При передаче строки и числа N в функцию, она вернет сокращенную версию строки.
//

func shortedString(string string: String, number num: Int) -> String {
    num > 0 ? String(string.dropLast(num)) + "…" : string
}

let resultTask15 = shortedString(string: "Требования", number: 2)
print(resultTask15)

// MARK: - Task 16. Объединение двух массивов без дубликатов
//16. Задание: Объединение двух массивов без дубликатов
//
//Описание: Разработайте функцию, которая объединяет два массива чисел без повторяющихся элементов.
//Требования:
//Функция объединения: Создайте функцию, принимающую два массива чисел.
//Функция должна возвращать новый массив, содержащий уникальные элементы из обоих массивов.
//Ожидаемый результат: При передаче двух массивов чисел в функцию, она вернет новый массив без дубликатов.
//

func mergeArraysWithoutDuplicates(_ array1: [Int], _ array2: [Int]) -> [Int] {
    let firstSet = Set(array1)
    let secondSet = Set(array2)
    let mergedSet = firstSet.union(secondSet)
    let mergedArray = Array(mergedSet)
    return mergedArray
}

let array1 = [1, 2, 3, 4, 5]
let array2 = [3, 4, 5, 6, 7]
let mergedArray = mergeArraysWithoutDuplicates(array1, array2)
print("Объединенный массив без дубликатов: \(mergedArray)")

// MARK: - Task 17. Количество слов заданной длины
//17. Задание: Количество слов заданной длины
//
//Описание: Разработайте функцию, которая подсчитывает количество слов заданной длины N в предоставленной строке.
//Требования:
//Функция подсчета: Создайте функцию, принимающую строку и число N.
//Функция должна возвращать количество слов в строке, длина которых равна N.
//Ожидаемый результат: При передаче строки и числа N в функцию, она вернет количество слов заданной длины.
//

func numberOfWords(string string: String, number num: Int) -> Int {
    return string.split(separator: " ").filter { $0.count == num }.count
}

let resultTask17 = numberOfWords(string: "Количество слов слов слов заданной длины", number: 4)
print(resultTask17)

// MARK: - Task 18. Угадай число
//18. Задание: Угадай число
//
//Описание: Создайте игру, в которой компьютер случайно выбирает число между 1 и 100, а игрок пытается угадать его за минимальное количество попыток.
//Требования:
//Игра угадай число: После каждой попытки игрока, компьютер должен сообщать, была ли догадка слишком высокой или слишком низкой.
//Ожидаемый результат: Игра предоставляет интерактивный способ угадывания числа с подсказками.
//

func guessTheNumber() {
    let targetNumber = Int.random(in: 1...100)
    var attempts = 0

    print("Добро пожаловать в игру 'Угадай число'!")
    print("Компьютер выбрал случайное число между 1 и 100.")

    while true {
        attempts += 1

        print("Попробуйте угадать число:")
        if let guess = readLine(), let userGuess = Int(guess) {
            if userGuess == targetNumber {
                print("Поздравляю! Вы угадали число за \(attempts) попыток.")
                break
            } else if userGuess < targetNumber {
                print("Число слишком маленькое. Попробуйте еще раз.")
            } else {
                print("Число слишком большое. Попробуйте еще раз.")
            }
        } else {
            print("Пожалуйста, введите корректное число.")
        }
    }
}

//guessTheNumber()

// MARK: - Task 19. Простой шифратор и дешифратор слов
//19. Задание: Простой шифратор и дешифратор слов
//
//Описание: Разработайте метод шифрования, заменяющий определенные буквы другими, и метод дешифрования для восстановления исходного сообщения.
//Требования:
//Функция шифрования: Создайте функцию encode, которая принимает строку и возвращает зашифрованную строку, заменяя a на z, b на y, c на x и так далее.
//Функция дешифрования: Создайте функцию decode, которая принимает зашифрованную строку и возвращает исходную строку, производя обратную замену.
//Ожидаемый результат: При передаче строки в функцию encode, она вернет зашифрованную версию, а функция decode вернет исходное сообщение из зашифрованной строки.
//

func encode(_ text: String) -> String {
    let characters = Array("abcdefghijklmnopqrstuvwxyz")
    
    var encodedText = ""
    
    for char in text {
        let lowercaseChar = String(char).lowercased()
        
        if let indexBeforeEncoding = characters.firstIndex(of: Character(lowercaseChar)) {
            let indexAfterEncoding = characters.count - 1 - indexBeforeEncoding
            encodedText.append(characters[indexAfterEncoding])
        } else {
            encodedText.append(char)
        }
    }
    
    return encodedText
}

print(encode("abc"))

func decode(_ text: String) -> String {
    let characters = Array("abcdefghijklmnopqrstuvwxyz")
    
    var decodedText = ""
    
    for char in text {
        let lowercaseChar = String(char).lowercased()
        
        if let indexBeforeEncoding = characters.firstIndex(of: Character(lowercaseChar)) {
            let indexAfterEncoding = characters.count - 1 - indexBeforeEncoding
            decodedText.append(characters[indexAfterEncoding])
        } else {
            decodedText.append(char)
        }
    }
    
    return decodedText
}

print(decode("zyx"))

// MARK: - Task 20. Функция вывода каждого слова строки на новой строке
//20. Задание: Функция вывода каждого слова строки на новой строке
//Описание: Разработайте функцию, которая выводит каждое слово предоставленной строки на новой строке.
//Требования:
//Функция вывода: Создайте функцию, принимающую строку.
//Функция должна выводить каждое слово на новой строке.
//Ожидаемый результат: При передаче строки в функцию, она вернет каждое слово на отдельной строке.
//

func printEachWordOnNewLine(_ inputString: String) {
    let words = inputString.components(separatedBy: " ")
    
    for word in words {
        print(word)
    }
}

printEachWordOnNewLine("Разработайте функцию вывода каждого слова на новой строке")

// MARK: - Task 21. Функция вывода каждого слова через определенный интервал времени
//21. Задание: Функция вывода каждого слова через определенный интервал времени
//
//Описание: Разработайте функцию, которая выводит каждое слово строки через заданный интервал времени.
//Требования:
//Функция временного вывода: Создайте функцию, принимающую строку и интервал времени.
//Функция должна выводить каждое слово строки с заданным интервалом времени.
//Ожидаемый результат: При передаче строки и интервала времени в функцию, она вернет слова строки с заданным интервалом.
//

func delayPrint(string str: String, seconds time: UInt32) {
     let words = str.split(separator: " ")
     for i in words {
         sleep(time)
         print(i)
     }
 }

 delayPrint(string: "test1 test2 test3", seconds: 2)

// MARK: - Task 22. Конвертация времени из секунд в часы, минуты и секунды
//22. Задание: Конвертация времени из секунд в часы, минуты и секунды
//
//Описание: Разработайте функцию, которая конвертирует время из секунд в часы, минуты и секунды.
//Требования:
//Функция конвертации времени: Создайте функцию, принимающую количество секунд.
//Функция должна возвращать время, представленное в формате часов, минут и секунд.
//Ожидаемый результат: При передаче количества секунд программа автоматически определяет 5 часов 28 минут 31 секунда
//

let totalSeconds = 10328
let usefulMinutes = totalSeconds % (60 * 60)
let hours = usefulMinutes / 3600
let remainingSeconds = usefulMinutes % 3600
let minutes = remainingSeconds / 60
let seconds = remainingSeconds % 60

let needsZero = seconds < 10
let stringSeconds = needsZero ? "0\(seconds)" : "\(seconds)"

print("Время на часах: \(hours) часов \(minutes) минут \(stringSeconds) секунд")
