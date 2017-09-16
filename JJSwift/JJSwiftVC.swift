////
////  JJSwiftVC.swift
////  JJSwift
////
////  Created by 池田 on 2017/7/18.
////  Copyright © 2017年 Zebra. All rights reserved.
////
//
//import UIKit
//
//enum ComposePoint {
//    case North
//    case South
//    case East
//    case West
//}
//
//enum Barcode {
//    case UPCA(Int, Int, Int)
//    case QRCode(String)
//}
//
//enum ASCIICharacter : Character {
//    case Tab = "\t"
//    case LineFeed = "\n"
//    case CarriageReturn = "\r"
//}
//
//enum Planet : Int {
//    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
//}
//
//enum CompassPort{
//    case North, South, East, West
//}
//
//struct FixedLengthRange {
//    var firstValue : Int
//    let length : Int
//}
//
////struct Point {
////    var x = 0.0
////    var y = 0.0
////}
//
//struct Size {
//    var width = 0.0
//    var height = 0.0
//}
//
////var square = Rect(origin: Point(x : 0.0, y : 0.0), size: Size(width: 10.0, height: 10.0))
////let initialCenter = square.center
////
////print(initialCenter)
////square.center = Point(x: 20.0, y: 20.0)
////print("square.origin is at (\(square.origin.x), \(square.origin.y))")
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center : Point{
//        get{
//            let centerX = origin.x + size.width * 0.5
//            let centerY = origin.y + size.height * 0.5
//            return Point(x: centerX, y: centerY)
//        
//        }
//        set{
//            origin.x = newValue.x - size.width * 0.5
//            origin.y = newValue.y - size.height * 0.5
//        }
//    }
//}
//
////let volumeResult = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
////print(volumeResult.volume)
//struct Cuboid {
//    var width = 0.0
//    var height = 0.0
//    var depth = 0.0
//    var volume : Double {
//        return width * height * depth
//    }
//}
//
////let stepCounter = StepCounter()
////stepCounter.totalSteps = 200
////stepCounter.totalSteps = 360
////stepCounter.totalSteps = 900
//class StepCounter{
//    var totalSteps : Int = 0 {
//        willSet(newValue){
//            print("set totalSteps to \(newValue)")
//        }
//        didSet(oldValue){
//            if totalSteps > oldValue {
//                print("Add \(totalSteps - oldValue) steps")
//            }
//        }
//    }
//}
//
//
////print(SomeClass.computedTypeProperty)
////print(SomeStruct.storedTypeProperty)
////SomeStruct.storedTypeProperty = "Another value"
////print(SomeStruct.storedTypeProperty)
//struct SomeStruct {
//    static var storedTypeProperty = "Some value"
//    static var computedTypeProperty : Int {
//        return 100
//    }
//}
//
//enum SomeEnumeration {
//    static var storedTypeProperty = "Some value"
//    static var computedTypeProperty : Int {
//        return 150
//    }
//}
//
//class SomeClass {
//    class var  computedTypeProperty : Int {
//        return 200
//    }
//}
//
////var leftChannel = AudioChannel()
////var rightChannel = AudioChannel()
////leftChannel.currentLevel = 7
////print(leftChannel.currentLevel)
////print(AudioChannel.maxInputLevelForAllChannels)
////
////rightChannel.currentLevel = 11
////print(rightChannel.currentLevel)
////print(AudioChannel.maxInputLevelForAllChannels)
//struct AudioChannel {
//    static let thresholdLevel = 10
//    static var maxInputLevelForAllChannels = 0
//    var currentLevel : Int = 0 {
//        didSet{
//            if currentLevel > AudioChannel.thresholdLevel {
//                currentLevel = AudioChannel.thresholdLevel
//            }
//            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
//                AudioChannel.maxInputLevelForAllChannels = currentLevel
//            }
//        }
//    }
//}
//
////view.backgroundColor = UIColor.lightGray
////let somePoint = Point(x: 4.0, y: 5.0)
////if somePoint.isToTheRightOfX(x: 1.0) {
////    print("This point is to the right of the line where x == 1.0")
////}
////struct Point {
////    var x = 0.0
////    var y = 0.0
////    func isToTheRightOfX(x : Double) -> Bool {
////        print(self.x)
////        print(x)
////        return self.x > x
////    }
////}
//
////var somePoint = Point(x : 1.0, y : 2.0)
////somePoint.movePoint(deltaX: 5.0, deltaY: 5.0)
//struct Point {
//    var x = 0.0
//    var y = 0.0
//    mutating func movePoint(deltaX : Double, deltaY : Double) {
////        x += deltaX
////        y += deltaY
////        print("(\(x),\(y))")
//        self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}
//
////var light = TriStateSwitch.Low
////print(light)
////
////light.next()
////print(light)
////
////light.next()
////print(light)
//enum TriStateSwitch {
//    case Off, Low, High
//    
//    mutating func next(){
//        switch self {
//        case .Off:
//            self = .Low
//        case .Low:
//            self = .High
//        case .High:
//            self = .Off
//        }
//    }
//}
//
//struct LevelTracker {
//    static var highestUnlockLevel = 1
//    static func unlockLevel(level : Int){
//        if level > highestUnlockLevel {
//            highestUnlockLevel = level
//        }
//    }
//    
//    static func levelIsUnlocked(level : Int) -> Bool{
//        return level <= highestUnlockLevel
//    }
//    
//    var currentLevel = 1
//    mutating func advanceToLevel(level : Int) -> Bool {
//        if LevelTracker.levelIsUnlocked(level: level){
//            currentLevel = level
//            return true
//        }
//        else {
//            return false
//        }
//    }
//}
//
////subscript(index : Int) -> Int{
////    get{
////        //返回与入参匹配的Int类型的值
////    }
////    
////    set(newValue){
////        //执行赋值操作
////    }
////}
//
////let timesTable = TimesTable(multiplier : 3)
////print(timesTable[20])
//struct TimesTable {
//    let multiplier : Int
//    subscript(index : Int) ->Int{
//        return multiplier * index
//    }
//}
//
////var matrix = Matrix(rows: 2, columns: 2)
////matrix[0, 2] = 2.0
////matrix[0, 0] = 0.5
//struct Matrix {
//    let rows : Int
//    let columns : Int
//    var grid : [Double]
//    
//    init(rows : Int, columns : Int) {
//        self.rows = rows
//        self.columns = columns
//        grid = Array(repeatElement(0.0, count: rows * columns))
//    }
//    
//    func indexIsValidForRow(row : Int, col : Int) -> Bool{
//        return row >= 0 && row < rows && col >= 0 && col < columns
//    }
//    
//    subscript(row : Int, column : Int) -> Double{
//        get{
//            assert(indexIsValidForRow(row: row, col: column), "Index out of range")
//            print(grid)
//            return grid[(row * columns) + column]
//        }
//        set{
//            assert(indexIsValidForRow(row: row, col: column), "Index out of range")
//            grid[(row * columns) + column] = newValue
//            print(grid)
//        }
//    }
//}
//
////var player = Player(name : "John")
////player.completedLevel(level: 1)
////print("highest level is unlocked is \(LevelTracker.highestUnlockLevel)")
//class Player {
//    var tracker = LevelTracker()
//    let playerName : String
//    
//    func completedLevel(level : Int) {
//        LevelTracker.unlockLevel(level: level + 1)
//        tracker.advanceToLevel(level: level + 1)
//    }
//    
//    init(name: String) {
//        playerName = name
//    }
//}
//
////let counter = Counter()
////counter.incrementBy(amount: 10, numberOfTimes: 5)
////class Counter {
////    var count : Int = 0
////    func incrementBy(amount : Int, numberOfTimes : Int) {
////        self.count += amount * numberOfTimes
////        print(count)
////    }
////}
//
////let counter = Counter()
////counter.increment()
////counter.incrementBy(step: 10)
////counter.rest()
////class Counter {
////    var count = 0
////    func increment() {
////        count += 1
////        print(count)
////    }
////    
////    func incrementBy(step : Int) {
////        count += step
////        print(count)
////    }
////    
////    func  rest() {
////        count = 0
////        print(count)
////    }
////}
//
////let manager = DataManager()
////manager.data.append("data")
////manager.data.append("here")
////print(manager.data)
//
//
////该类是一个将外部文件中的数据导入的类，提供了数据导入功能
//class DataImporter {
//    var fileName = "data.txt"
//}
//
////该类是数据管理功能
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//}
//
////var range = FixedLengthRange(firstValue: 0, length: 3)
////range.firstValue = 10
////print(range.firstValue)
////print(range.length)
//
////结构体是值引用
////let resolution = Resolution()
////let mode = VideoMode()
////mode.resolution = resolution
////mode.interlaced = false
////mode.name = "10086"
////mode.frameRate = 25.0
////
////let nextMode = mode
////nextMode.frameRate = 30.0
////print(mode.frameRate)
////print(nextMode.frameRate)
////
////if mode === nextMode {
////    print("They are the same instance !")
////}
////else {
////    print("They are not the same instance !")
////}
//
////值是引用类型
////var currentDirection = CompassPort.West
////let lastDirection = currentDirection
////currentDirection = .East
////if lastDirection == .West {
////    print("The remember direction is still .West")
////}
////else {
////    print("The remember direction is still .East")
////}
//
////实例化
////let resolution = Resolution(width: 1920, height: 1080)
////var cinema = resolution
////cinema.width = 2080
////print("cinema = \(cinema)")
////print("resolution = \(resolution)")
////let someResolution = Resolution()
////let someVideoMode = VideoMode()
//
//struct Resolution {
//    var width = 0
//    var height = 0
//}
//
//class VideoMode{
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name : String?
//}
//
////class SomeClass {
////    //class definition goes here
////}
////
////struct SomeStruct {
////    //structure definition goes here
////}
//
////枚举
////let possibleValue = 9
////if let somePlanet = Planet(rawValue: possibleValue) {
////    switch somePlanet {
////    case .Earth:
////        print("Human Home")
////    default:
////        print("NO Humans")
////    }
////}
////else {
////    print("There is not a planet at position \(possibleValue)")
////}
//
//
////var productBarCode = Barcode.UPCA(8, 85909_51226, 3)
////productBarCode = .QRCode("ABCDSFRGHJ")
////
////switch productBarCode {
////case let .UPCA( numberSystem,  identify, check):
////    print("UPC-A with value of \(numberSystem), \(identify), \(check)")
////case let .QRCode( productCode):
////    print("QR code with value of \(productCode)")
////}
//
//
////枚举赋值情况
////var direction = ComposePoint.North
////direction = .West
//
////switch direction {
////case .North:
////    print("North")
////case .South:
////    print("South")
////case .West:
////    print("West")
////case .East:
////    print("East")
////}
//
//
////尾随闭包
////func makeIncement(forIncrement amount : Int) -> () -> Int{
////    var total = 0
////    func incrementor() -> Int {
////        total += amount
////        return total
////    }
////    return incrementor
////}
////
////let incrementValue = makeIncement(forIncrement: 10)
////var value = incrementValue()
////print(value)
////value = incrementValue()
////print(value)
////value = incrementValue()
////print(value)
////
////let increase = incrementValue
////let value1 = increase()
////print(value1)
//
//
////简单闭包
////let digitalNames = [0 : "Zero", 1 : "One", 2 : "Two", 3 : "Three", 4 : "Four", 5 : "Five", 6 : "Six", 7 : "Seven", 8 : "Eight", 9 : "Nine"]
////let numbers = [12, 34, 53]
////
////let strings = numbers.map { (number) -> String in
////    var output = ""
////    output = digitalNames[number % 10]!
////    print(output)
////    return output
////}
//
////函数嵌套
////var currentValue = 10;
////while currentValue > 0 {
////    let moveToZero = chooseStepFunction(input: currentValue > 0)
////    var result = moveToZero(currentValue)
////    print(result)
////    currentValue -= 1
////}
////func chooseStepFunction(input : Bool) -> (Int) -> Int {
////    
////    func stepForward(input : Int) -> Int {
////        return input + 1
////    }
////    
////    func backForward(input : Int) -> Int {
////        return input - 1
////    }
////    
////    if input {
////        return backForward
////    }
////    else {
////        return stepForward
////    }
////}
//
////函数作为返回值
////var currentValue = 10;
////
////while currentValue > 0 {
////    let moveToZero = chooseStepFunction(input: currentValue > 0)
////    var result = moveToZero(currentValue)
////    print(result)
////    currentValue -= 1
////}
////
////func chooseStepFunction(input : Bool) -> (Int) -> Int {
////    if input {
////        return backForward
////    }
////    else {
////        return stepForward
////    }
////}
//
////
////func stepForward(input : Int) -> Int {
////    return input + 1
////}
////
////func backForward(input : Int) -> Int {
////    return input - 1
////}
//
//
////函数作为参数
////multiply(sum: sum, a: 1, b: 2)
////func multiply(sum : (Int, Int) -> Int, a : Int, b : Int) {
////    
////    let result = sum(a, b) * a * b
////    print("result = \(result)")
////}
////
////func sum(a : Int, b : Int) -> Int {
////    return a + b
////}
//
////inout
////var number1 = 10
////var number2 = 20
////swap(&number1, &number2)
////print(number1)
////print(number2)
////func swapNumbers(a : inout Int, b : inout Int){
////    let temp = a
////    a = b
////    b = temp
////}
//
////定义可变参数
////var number = 10
////print(sum(number: &number, number2: 20))
////func sum(number : inout Int, number2 : Int) -> Int {
////    number += number2
////    return number
////}
//
//
////可变参数
////print(sum(numbers: 1, 3, 4))
////print(sum(numbers: 100, 300, 500))
////func sum(numbers : Double...) -> Double{
////    var total = 0.0
////    for number in numbers {
////        total += number
////    }
////    return total
////}
//
////func join(string s1 : String, toString s2 : String, withJoiner joiner : String) -> String{
////    return s1 + joiner + s2
////}
////print(join(string: "Hello", toString: "world", withJoiner: "world"))
//
////let number = count(string: "swift is very interesting !")
////print(number.vowels)
////print(number.consonants)
////print(number.others)
////func count(string : String) ->(vowels : Int, consonants : Int, others : Int) {
////    var vowels = 0, consonants = 0, others = 0
////    for character in string.characters {
////        switch String(character).lowercased() {
////        case "a", "e", "i", "o", "u":
////            vowels += 1
////        case "b", "c", "d", "f", "g","h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
////            consonants += 1
////        default:
////            others += 1
////        }
////    }
////    
////    return(vowels, consonants, others)
////}
//
////无返回值函数
////greeting(greet: "Nancy")
////func greeting(greet : String) {
////    print("Hello, " + greet)
////}
//
////无参数的函数
//// print(greeting())
////func greeting() -> String {
////    return "Hello!"
////}
//
////多参数函数
//// print(calculateDistance(start: 1, end: 100))
////func calculateDistance(start : Int, end : Int)  -> Int {
////    return end - start
////}
//
//
////简单函数
////print(greeting(personName: "Nana"))
//
////func greeting(personName : String) -> String {
////    return "Hello," + personName + "!"
////}
//
////    var number = 10
////    whilLoop : while number > 0 {
////
////        switch number {
////        case 9:
////            print("9")
////        case 10:
////            var sum = 0
////            for index in 0...10 {
////                sum += index
////                print(sum)
////                if index == 9 {
////                    break whilLoop
////                }
////            }
////        default:
////            break;
////        }
////        number -= 1
////    }
//        
////    let number = 5
////    var description = "The number \(number) is"
////    switch number {
////    case 2, 3, 5, 7:
////        description += " a prime number, and also"
////        fallthrough
////    default:
////        description += " can integer"
////    }
////    print(description)
//        
////    let numberSymbol : Character = "三"
////    var possibleValue : Int?
////    switch numberSymbol {
////    case "1", "一":
////        possibleValue = 1
////    case "2", "二":
////        possibleValue = 2
////    case "3", "三":
////        possibleValue = 3
////    case "4", "四":
////        possibleValue = 4
////    default:
////        break
////    }
////    
////    if let value = possibleValue {
////        print("The integer value of \(numberSymbol) is \(value)")
////    }
////    else {
////        print("An integer value could not be found for \(numberSymbol)")
////    }
//        
////    var number : Int = 0
////    for value in 0...5 {
////        number += 1
////        if value == 3 {
////            break
////        }
////    }
////    print(number)
//        
////    let inputStr = "great minds think alike"
////    var outputStr : String = ""
////    for character in inputStr.characters {
////        switch character {
////        case "a", "e", "i", "o", "u", " ":
////            continue
////        default:
////            outputStr.append(character)
////        }
////    }
////    print(outputStr)
////        
//        
//        
//        
////    let anotherPoint = (1, -1)
////    switch anotherPoint {
////    case let (x, y) where x == y:
////        print("（\(x), \(y)）is on the line x == y")
////    case let (x, y) where x == -y:
////        print("（\(x), \(y)）is on the line x == -y")
////    case let (x, y):
////        print("（\(x), \(y)）is just some arbitrary point")
////    }
//
//    
////    let anotherPoint = (2, 0)
////    switch anotherPoint {
////    case (let x, 0):
////        print("on the x-axis with an x value of \(x)")
////    case (0, let y):
////        print("on the y-axis with an y value of \(y)")
////    case let (x, y):
////        print("somewhere at （\(x), \(y)）")
////    }
//        
//        
////    let somePoint = (1, 1)
////    switch somePoint {
////    case (0, 0):
////        print("(0, 0) is at origin")
////    case (_, 0):
////        print("(\(somePoint.0), 0) is on the x-axis")
////    case (0, _):
////        print("(0,\(somePoint.1) is on the y-axis")
////    case (-2...2, -2...2):
////        print("((\(somePoint.0),\(somePoint.1)) inside the box")
////    default:
////        print("((\(somePoint.0),\(somePoint.1)) is outside the box")
////    }
//        
////    let count = 3_000_000_000_000
////    var starCount : String
////    switch count {
////    case 0:
////        starCount = "no"
////    case 1...10:
////        starCount = "a few"
////    case 11...999:
////        starCount = "hundreds of"
////    case 999...999_999:
////        starCount = "thousands of"
////    default:
////        starCount = "millons and millons of"
////    }
////    print("There are \(starCount) stars in the sky")
//        
////    let someCharacter : Character = "e"
////    switch someCharacter {
////    case "a", "e", "i", "o", "u":
////        print("\(someCharacter) is a vowel")
////    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
////        print("\(someCharacter) is a consonant")
////    default:
////        print("\(someCharacter) is not  a consonant or vowel")
////    }
//        
////    let temperature = 40
////    if temperature >= 100 {
////        print("沸腾了")
////    }
////    else if temperature > 50 && temperature < 100 {
////        print("半熟了")
////    }
////    else if temperature > 30 && temperature < 50 {
////        print("很热了")
////    }
////    else {
////        print("凉爽了")
////    }
//        
////    var answer = 1
////    let base = 3
////    var power = 5
////    repeat {
////        answer *= base
////        power -= 1
////    } while power > 5
////    print(answer)
//        
////    while power > 0 {
////        answer *= base
////        power -= 1
////    }
////    print(answer)
//
////    for _ in 1...power {
////        answer *= base
////    }
////    print(answer)
//        
//    //字典
////    var nameDict = Dictionary<Int, String>()
////    nameDict[1] = "Lily"
////    //现在nameDict又成为了一个键为Int值为String的空字典了
////    nameDict = [:]
//        
//        
//        
////    var cityDict : [String : String] = ["HaErbin" : "HeiLongJiang", "JiNan" : "ShanDong", "HaiKou" : "HaiNan"]
////    for (key, value) in cityDict.enumerated(){
////        print("\(key) in \(value)")
////    }
//        
//        
////    let cityKeys = Array(cityDict.keys)
////    let cityValues = Array(cityDict.values)
////    print(cityKeys)
////    print(cityValues)
//        
//        
//        
////    for city in cityDict.keys {
////        print(city)
////    }
////        
////    print("--------")
////        
////    for province in cityDict.values {
////        print(province)
////    }
//        
//
////    for (city, province) in cityDict {
////        print("\(city) in \(province)")
////    }
//        
//        
////    if let removeValue = cityDict .removeValue(forKey: "HaErbin"){
////        print(removeValue)
////    }
////    else {
////        print("does not exists a value For this key")
////    }
////     print(cityDict)
//        
//        
////    cityDict["HaErbin"] = nil
////    print(cityDict)
//    
//        
////    if let province = cityDict["HaErbin"] {
////        print("The Province is \(province)")
////    }
////    else {
////        print("The Province does not exists")
////    }
//        
//        
////    if let oldValue = cityDict.updateValue("HeiLongJiang1", forKey: "HaErbin") {
////        print("The old value is \(oldValue)")
////    }
////    print(cityDict)
//        
////    cityDict["HaErbin"] = "HeiLongJiang1"
////    print(cityDict)
//        
//        
////    if cityDict.isEmpty {
////        print("YES")
////    }
////    else {
////        print("NO")
////    }
//        
////    print("\(cityDict.count)")
//        
//        
//        
//    //数组定义
////    var numberArr : [Int] = [1, 2, 3, 4]
////    print(numberArr)
//    
////    var nameStrArr : [String] = ["John", "Smith", "Lilei"]
////        
////    //for - in 遍历
////    for name in nameStrArr {
////        print(name)
////    }
////        
////    print("--------")
////    
////    //enumerate 遍历
////    for (index, item) in nameStrArr.enumerated(){
////        print("\(index): \(item)")
////    }
//        
////    var numberArr = [Double](repeatElement(0.0, count: 3))
////    print(numberArr)
////    
////    var numberArr1 = [Double](repeatElement(1.0, count: 3))
////    print(numberArr1)
////    
////    var wholeArr = numberArr1 + numberArr
////    print(wholeArr)
//        
//        
//        
////    nameStrArr .remove(at: 0)
////    print(nameStrArr)
////        
////    nameStrArr .removeLast()
////    print(nameStrArr)
//        
////    nameStrArr[0...1] = ["Green", "Rose", "Rechide", "Adail"]
////    print(nameStrArr)
//        
////    nameStrArr += ["Green"]
////    print(nameStrArr)
////    
////    nameStrArr.append("David")
////    print(nameStrArr)
//        
////    print(nameStrArr)
////    print(nameStrArr.count)
////    if nameStrArr.isEmpty {
////        print("YES")
////    }
////    else {
////        print("NO")
////    }
//        
//        
////    let str = "dog!"
////    for scalar in str.unicodeScalars {
////        print("\(scalar.value)\n")
////    }
//        
//    //utf8
////    let str = "dog!"
////    for codeUnit in str.utf16 {
////        print("\(codeUnit)\n")
////    }
//        
//    //大小写的转换
////    let str = "I am not a salted fish"
////    let str1 = str.uppercased()
////    print(str1)
////
////    let str2 = str.lowercased();
////    print(str2)
//        
////前缀和后缀的判断
////let str = "I am in Beijing City"
////if str.hasPrefix("I"){
////    print("YES")
////}
////else{
////    print("NO")
////}
////
////if str.hasSuffix("City"){
////    print("YES")
////}
////else {
////    print("NO")
////}
//
////插值的计算
////let factor = 3
////let value = "\(factor) 乘以 2.5 是 \(Double(factor) * 2.5)"
////print("value = \(value)")
//        
////字符串的合并
////let str1 = "hello"
////let str2 = "world"
////var str  = str1 + str2
////print("str = \(str)")
////
////var strValue  = str1.appending(str2)
////print("strValue = \(strValue)")
////
////var strValue1  = str1.appending("!")
////print("strValue1 = \(strValue1)")
//        
////字符数量的计算
////let str = "you are a good girl"
////let length = str.characters.count
////print(length)
//        
////字符量
////for character in "boys!".characters {
////    print(character)
////}
//        
////可变字符串的初始化
////var varStr = "boy "
////varStr += " girl"
////print("varStr = \(varStr)")
//        
////空字符串的初始化
////var emptyStr = ""
////print("emptyStr = \(emptyStr)")
////
////var emptyStr1 = String()
////print("emptyStr1 = \(emptyStr1)")
//        
////let words = "\"我是齐天大圣\" - 孙悟空"
////print("words = \(words)")
////
////let dollarSign = "\u{24}"
////print("dollarSign = \(dollarSign)")
////
////let blackHeart = "\u{2665}"
////print("blackHeart = \(blackHeart)")
////
////let sparklingHeart = "\u{1F496}"
////print("sparklingHeart = \(sparklingHeart)")
//        
//        
////var sum = 0
////for index in 0...3 {
////    sum += index
////}
////print(sum)
////
////var sum1 = 0
////for index in 0..<3 {
////    sum1 += index
////}
////print(sum1)
//        
////空合运算符
////let defaultColor = "black"
////var userColor : String?
////var colorToUse = userColor ?? defaultColor
////print(colorToUse)
////
////userColor = "green"
////colorToUse = userColor ?? defaultColor
////print(colorToUse)
//        
////let lastPage = 1;
////let isLastPage = lastPage == 1 ? "YES" : "NO";
////print(isLastPage)
//        
////let a = 1
////let b = 1
////if a == b {
////    print("they are same")
////}
//        
////var a = 0
////a += 1
////let b = a
////print(a)
////print(b)
//        
//        
////let number1 = 8.0
////let number2 = 2.5
////let result = number1.truncatingRemainder(dividingBy: number2)
////print(result)
//        
////
////let greetingStr = "hello " + " world"
////print(greetingStr)
//        
////赋值运算符
////let number = 10
////var nickName = "小明"
//        
////let (x, y) = (1, 2)
////print(x)
////print(y)
//        
////        let age = -10
////        assert(age > 0, "A person age must not be less than zero")
//        
//        
////if let actualNumber = str.toValue() {
////print("\(str) has an integer value of \(actualNumber) ")
////}
////else {
////print("\(str) couldn't be converted to an integer")
////}
//
//        
////let str = "123";
////let value = (str as NSString) .integerValue;
////
////if value != nil {
////print("\(str) has an integer value of \(value) ")
////}
////else {
////print("\(str) couldn't be converted to an integer")
////}
//        
////let str = "123";
////let value = (str as NSString) .integerValue;
////print(value)
//        
//        
////tuple元组
////let http404Error = (404, "Not Found")
////let (statusCode, statusMessage) = http404Error
////print("The status code is \(statusCode)")
////print("The status message is \(statusMessage)")
//        
////let http404Error = (404, "Not Found")
////let (statusCode, statusMessage) = http404Error
////print("The status code is \(http404Error.0)")
////print("The status message is \(http404Error.1)")
//        
////let http200Status = (statusCode : 200, statusMessage : "OK")
////print("The status code is \(http200Status.statusCode)")
////print("The status message is \(http200Status.statusMessage)")
//
////bool值
////let isOrange = true
////if isOrange {
////    print("yes")
////}
////else {
////    print("no")
////}
//        
////整数的字面量
////let decimalInteger = 17
////let binaryInteger = 0b10001     //二进制17
////let octalInteger = 0o21         //八进制17
////let hexadecimalInteger = 0x11   //十六进制17
//        
////整数之间的类型转换
////let oneNumber : UInt16 = 2_000
////let twoNumber : UInt8 = 1;
////let sum = oneNumber + UInt16(twoNumber)
////print(sum)
//        
////整数和浮点数之间的转换
////let one = 3
////let pi = 3.14
////let sum = Double(one) + pi
////print(sum)
//        
////别名
////typealias numberInt = UInt16
////let min = numberInt.min
////let max = numberInt.max
////print(min)
////print(max)
//        
//        
//        //整数的最大最小值
////        let minValue = UInt8.min
////        let maxValue = UInt8.max
////        print(minValue)
////        print(maxValue)
//
//    //    var n = 2
//    //    while n < 200 {
//    //        n = n * 2
//    //    }
//    //    
//    //    print(n)
//        
//        
//        //循环区间的使用情况
////        var value = 0
////        for i in 0 ... 4 {
////            value += i
////        }
////        print("vlaue = \(value)")
////        
////        var key = 0
////        
////        for j in 0 ..< 4 {
////            key += j
////        }
////        print("key = \(key)")
//        
////        let greet = goodmorning(name: "John", location: "Beijing")
////        print(greet)
//        
////        let scores = [100, 98, 78 ,66, 54]
////        let result = calculation(scores: scores)
////        
////        print(result.min)
////        print(result.sum)
////        print(result.max)
//        
//        //参数个数可变的函数
////        let value = sum(numbers: 100, 80, 60, 70)
////        print(value)
//        
//        //函数的嵌套
////        let sum = value();
////        print(sum)
//        
//        //函数作为返回值返回
////        let result = increment()
////        let value = result(100)
////        print(value)
//        
//        //函数作为参数进行传递
////        let numbers = [20, 15, 18, 9]
////        let matchCondition = match(list: numbers, condition: lessThan)
////        print(matchCondition)
//        
//        //类实例化
////        var nameInstance = name()
////        nameInstance.number = 10
////        var nameFunc = nameInstance.myname()
////        print(nameFunc)
//        
//        //setter && getter
//        
////        let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
////        print(triangle.permeter)
////        triangle.permeter = 9.9
////        print(triangle.sideLength)
//     
//        
////        let triangleAndSqure = TriangleAndSquare(size : 10, name : "another test shape")
////        print(triangleAndSqure.square.sideLength)
////        print(triangleAndSqure.triangle.sideLength)
////        triangleAndSqure.square = Square(sideLength: 50, name: "larger square")
//        
////        var counter = Counter()
////        counter.incrementBy(amount: 2, numberOfTimes: 7)
//        
////    }
//
////    //函数实质上就是闭包
////    numbers.map({
////    (number : Int) -> Int in
////        let result = number * 3
////        return result
////    })
//    
//    
//    
//    
//    
////    //函数作为参数进行传递
////    func match(list : [Int], condition:(Int) -> Bool) -> Bool {
////        for item in list {
////            if condition(item) {
////                return true
////            }
////        }
////        return false;
////    }
////    
////    func lessThan(number : Int) -> Bool {
////        return number < 18
////    }
////    
////    //简单函数
////    func goodmorning(name : String, location : String) -> String {
////        return "goodmorning! \(name),I am in \(location)"
////    }
////    
////    //元组类型
////    func calculation(scores : [Int]) -> (min : Int, max : Int, sum : Int) {
////        var min = scores[0]
////        var max = scores[0]
////        var sum = 0
////        for score in scores {
////            if score > max {
////                max = score
////            }
////            else if score < min {
////                min = score
////            }
////            sum += score;
////        }
////        return (min, max, sum)
////    }
////    
////    //参数个数可变的函数
////    func sum(numbers : Int ...) -> Int {
////        var sum = 0
////        for number in numbers {
////            sum += number
////        }
////        
////        return sum
////    }
////    
////    //函数的嵌套
////    func value() -> Int {
////        var y = 100
////        func add(){
////            y += 10;
////        }
////        add()
////        return y;
////    }
////    
////    //函数作为另外一个函数的返回值
////    func increment() -> ((Int) -> Int) {
////        func add(number : Int) -> Int {
////            return 100 + number
////        }
////        return add
////    }
//
//
////class Counter
////{
////    var count : Int = 0
////    func incrementBy(amount : Int, numberOfTimes times : Int){
////        count += amount * times
////        print(count)
////    }
////}
//
//class name{
//    var number = 0
//    
//    func myname() -> String {
//       return "John"
//    }
//}
//
//
//class NamedShape{
//    var numberOfSlides : Int = 0
//    var name : String
//    
//    init(name : String) {
//        self.name = name
//    }
//    
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSlides) sides."
//    }
//
//}
//
//class EquilateralTriangle : NamedShape
//{
//    var sideLength : Double = 0.0
//    
//    init(sideLength : Double, name : String) {
//        self.sideLength = sideLength
//        super.init(name: name)
//        numberOfSlides = 3
//    }
//    
//    var permeter : Double{
//        get {
//        
//            return 3.0 * sideLength
//        }
//        set{
//        
//            sideLength = newValue / 3.0
//        }
//    }
//    
//    override func simpleDescription() -> String {
//        return "An equilateral Triangle with sides of lenght \(sideLength)"
//    }
//
//}
//
//class Square : NamedShape
//{
//    var sideLength : Double
//    init(sideLength : Double, name : String) {
//        self.sideLength = sideLength
//        super.init(name: name)
//        numberOfSlides = 4
//    }
//    
//    func area() -> Double {
//        return sideLength * sideLength
//    }
//    
//    override func simpleDescription() -> String {
//        return "A square with sides of length \(sideLength)"
//    }
//}
//
//class TriangleAndSquare
//{
//    var triangle : EquilateralTriangle{
//        willSet {
//        
//            square.sideLength = newValue.sideLength
//        }
//    
//    }
//    
//    var square : Square{
//        willSet {
//            
//            triangle.sideLength = newValue.sideLength
//        }
//    }
//    
//    init(size : Double, name : String) {
//        square = Square(sideLength : size, name : name)
//        triangle = EquilateralTriangle(sideLength: size, name: name)
//    }
//}
//
//
////let train = Train()
////train.makeNoise()
//class Train: Vehicle {
//    override func makeNoise() {
//        print("train")
//    }
//}
//
//class Vehicle{
//    var currentSpeed = 0.0
//    var description : String{
//        return "traveling at \(currentSpeed) miles per hour"
//    }
//    
//    func makeNoise() {
//        print("nothing to do")
//    }
//}
//
////let car = Car()
////car.currentSpeed = 25.0
////car.gear = 3
////print("Car : \(car.description)")
//class Car : Vehicle{
//    var gear = 1
//    override var description: String{
//        return super.description + "in gear \(gear)"
//    }
//}
//
//class AutomaticCar : Car{
//    override var currentSpeed: Double{
//        didSet{
//            gear = Int(currentSpeed / 10.0) + 1
//        }
//    }
//}
//
//class JJSwiftVC: UIViewController
//{
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//        
//        view.backgroundColor = UIColor.green
//        
//        let automaticCar = AutomaticCar()
//        automaticCar.currentSpeed = 35.0
//        print("automaticCar ： \(automaticCar.description)")
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
