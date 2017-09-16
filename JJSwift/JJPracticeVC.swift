//
//  JJPracticeVC.swift
//  JJSwift
//
//  Created by lucy on 2017/7/29.
//  Copyright © 2017年 Zebra. All rights reserved.
//

import UIKit

class JJPracticeVC: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }
}


//
//infix func + (left : Vector2D, right : Vector2D) -> Vector2D{
//    return Vector2D(x : left.x + right.x, y : left.y + right.y)
//}

//assignment func += (inout left : Vector2D, right : Vector2D){
//    left = left + right
//}

struct Vector2D {
    var x = 0.0, y = 0.0
}

//let positive = Vector2D(x: 3.0, y: 4.0)
//let negative = -positive
//print(negative)
//prefix func - (vector : Vector2D) -> Vector2D{
//    return Vector2D(x: -vector.x, y: -vector.y)
//}

//var willUnderFlow = UInt8.min
//willUnderFlow = willUnderFlow &- 1
//print(willUnderFlow)

//var willOverFlow = UInt8.max
//willOverFlow = willOverFlow &+ 1
//print(willOverFlow)

//let firstSixBits : UInt8 = 0b11111111
//let lastSixBits : UInt8 = 0b00000101
//let bitResult = firstSixBits ^ lastSixBits
//let bitResult = firstSixBits << 1
//let bitString = String(bitResult, radix : 2)
//print(bitString)

//let initialBits : UInt8 = 0b00001111
//let invertBits = ~initialBits
//let stringOfInvertBits = String(invertBits, radix : 2)
//print(stringOfInvertBits)

//var stringToEdit = TrackedString()
//stringToEdit.value = "1"
//stringToEdit.value = "2"
//print("number is \(stringToEdit.numberOfEdits)")
//struct TrackedString {
//    private(set) var numberOfEdits = 0
//    var value : String = ""{
//        didSet{
//            numberOfEdits += 1
//        }
//    }
//}

//public class A{
//     func someMethod(){
//    
//    }
//}
//
//internal class B : A{
//    override internal func someMethod(){
//        super.someMethod()
//    }
//}

//public enum CompassPoint{
//    case North
//    case South
//    case East
//    case West
//}
//
//public class SomePublicClass{           //显示的public类
//    public var somePublicProperty = 0   //显示的public类成员
//    var someInternalProperty = 0        //隐式的internal类成员
//    private func somePrivateMethod(){   //显示的private类成员
//    }
//}
//
//class SomeInternalClass{            //隐式访问级别 internal
//    var someInternalConstant = 0    //隐式访问级别internal
//    private func somePrivateMethod(){   //显示的private类成员
//    }
//}
//
//private class SomePrivateClass{         //显式的private类
//    var somePrivateProperty = 0         //隐式的private类成员
//    func somePrivateMethod(){           //隐式的private类成员
//    
//    }
//}

//func allItemsMatch<C1 : Container, C2 : Container where C1.ItemType == C2.ItemType, C1.ItemType : Equatable>(someContainer : C1, anotherContainer : C2) -> Bool{
//    
//    if someContainer.count != anotherContainer.count {
//        return false
//    }
//    
//    for i in 0...someContainer.count {
//        if someContainer[i] != anotherContainer[i] {
//            return false
//        }
//    }
//    
//    return true
//}
//
//protocol Container {
//    associatedtype ItemType
//    mutating func append(item : ItemType)
//    var count : Int{
//        get
//    }
//    subscript(i : Int) -> ItemType{
//        get
//    }
//}

//struct IntStack : Container{
//    var items = [Int]()
//    mutating func push(item : Int){
//        items.append(item)
//    }
//    mutating func pop() -> Int{
//        return items.removeLast()
//    }
//    
//    //遵循Container协议的实现
//    typealias ItemType = Int
//    mutating func append(item: Int) {
//        self.push(item: item)
//    }
//    var count: Int{
//        return items.count
//    }
//    subscript(i : Int) -> Int{
//        return items[i]
//    }
//}
//
//struct Stack<T> : Container{
//    var items = [T]()
//    mutating func push(item : T){
//        items.append(item)
//    }
//    mutating func pop() -> T{
//        return items.removeLast()
//    }
//    
//    //遵循Container协议的实现
////    typealias ItemType = T
//    mutating func append(item: T) {
//        self.push(item: item)
//    }
//    var count: Int{
//        return items.count
//    }
//    subscript(i : Int) -> T{
//        return items[i]
//    }
//}
//
//extension Array : Container{
//
//}

//let stringArr = ["cat", "dog", "llama", "parakeet", "terrapin"]
//let stringResult = findIndex(array: stringArr, valueToFind: "dog")
//print("stringResult \(stringResult)")
//
//let doubleArr = [3.14, 4.34, 1.00, 252.9]
//let doubleResult = findIndex(array: doubleArr, valueToFind: 3.14)
//print("doubleResult \(doubleResult)")
//func findIndex<T : Equatable>(array : [T], valueToFind : T) -> Int?{
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}

//func findStringIndex(array : [String], valueToFind : String) -> Int?{
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}

//func someFunction<T : SomeClass, U : SomeProtocol> (someT : T, someU : U) {
//    //function body goes here
//}

//var stackOfString = Stack<String>()
//stackOfString.push(item: "uno")
//stackOfString.push(item: "dos")
//stackOfString.push(item: "tres")
//stackOfString.push(item: "cuatro")
//stackOfString.pop()
//print(stackOfString)
//
//struct Stack <T> {
//    var items = [T]()
//    mutating func push(item :  T){
//        items.append(item)
//    }
//    mutating func pop() ->T{
//        return items.removeLast()
//    }
//}

//
//struct IntStruct {
//    var items = [Int]()
//    mutating func push(item : Int){
//        items.append(item)
//        print(items)
//    }
//    mutating func pop() ->Int{
//        items.removeLast()
//        print(items)
//        return
//    }
//}

//var someInt = 3
//var anotherInt = 107
//swapTwoValue(a: &someInt, b: &anotherInt)
//print("someInt : \(someInt), anotherInt : \(anotherInt)")
//
//var someString = " hello "
//var anotherString = " world "
//swapTwoValue(a: &someString, b: &anotherString)
//print("someString : \(someString), anotherString : \(anotherString)")
//
//func swapTwoValue <T>(a : inout T, b : inout T){
//    let temp = a
//    a = b
//    b = temp
//}

//func swapTwoInts(a : inout Int, b : inout Int){
//    let temp = a
//    a = b
//    b = temp
//}

//view.backgroundColor = UIColor.lightGray
//
//var counter = Counter()
//counter.count = -4
//counter.dataSource = TowardsZeroSource()
//for _ in 1...5 {
//    counter.increment()
//    print(counter.count)
//}
//class TowardsZeroSource : CounterDataSource{
//    func incrementForCount(count : Int) -> Int {
//        if count == 0 {
//            return 0
//        }
//        else if count < 0 {
//            return 1
//        }
//        else {
//            return -1
//        }
//    }
//}

//var counter = Counter()
//counter.dataSource = ThreeSource()
//for _ in 1...4 {
//    counter.increment()
//    print(counter.count)
//}
//class ThreeSource : CounterDataSource{
//    let fixedIncrement = 3
//}
//
//class Counter{
//    var count = 0
//    var dataSource : CounterDataSource?
//    func increment(){
//        if let amount = dataSource?.incrementForCount?(count: count) {
//            count += amount
//        }
//        else if let amount = dataSource?.fixedIncrement
//        {
//            count += amount
//        }
//    }
//}
//
//@objc protocol CounterDataSource{
//    @objc optional func incrementForCount(count : Int) -> Int
//    @objc optional var fixedIncrement : Int{
//        get
//    }
//}

//let objects : [AnyObject] = [
//    CirCle(radius: 2.0),
//    Country(area: 243_610),
//    Animal(legs: 4)
//]
//
//for object in objects {
//    if let objectWithArea = object as? HasArea{
//        print("Area is \(objectWithArea.area)")
//    }
//    else {
//        print("Something that does not have an area")
//    }
//}

class Animal{
    var legs : Int
    init(legs : Int) {
        self.legs = legs
    }
}

class CirCle : HasArea{
    let pi = 3.1415927
    var radius : Double
    var area : Double{
        return pi * radius * radius
    }
    
    init(radius : Double) {
        self.radius = radius
    }
}

class Country : HasArea{
    var area : Double
    init(area : Double) {
        self.area = area
    }
}

@objc protocol HasArea{
    var area : Double {
        get
    }
}

protocol Named {
    var name : String {
        get
    }
}

protocol Aged {
    var age : Int{
        get
    }
}

struct Person : Named, Aged {
    var name : String
    var age : Int
}

func wishHappyBirthday(celebrator : protocol<Named, Aged>){
    print("Happy birthday \(celebrator.name) - you are \(celebrator.age)!")
}

protocol PrettyTextRepresentable : TextRepresentable {
    func asPrettyText() -> String
}

//protocol SomeClassOnlyProtocol : class,  SomeInheritedProtocol{
//    //class - only protocol definition goes here
//}

//protocol InheritingProtocol : SomeProtocol, AnotherProtocol {
//    //协议定义
//}

//let simonTheHamster = Hamster(name: "Simon")
//let somethingTextRepresentable : TextRepresentable = simonTheHamster
//print(somethingTextRepresentable.asText())
struct Hamster {
    var name : String
    
    func asText() -> String {
        return "A hamster named \(name)"
    }
}
extension Hamster : TextRepresentable{}

protocol TextRepresentable {
    func asText() -> String
}

extension Dice : TextRepresentable{
    func  asText() -> String {
        return "A \(sides) - sided dice"
    }
}

class Dice{
    let sides : Int
    let generator : RandomNumberGenerator
    init(sides : Int, generator : RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int{
        return Int(generator.random() * Double(sides)) + 1
    }
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
        return lastRandom / m
    }
}

protocol RandomNumberGenerator {
    func random() -> Double
}


//class someSubClass : SomeSuperClass, SomeProtocol{
//    required override init() {
//        //构造器实现
//    }
//}
//
//class SomeSuperClass {
//    init() {
//        //协议定义
//    }}
//
//protocol SomeProtocol {
//    init()
//}

//var lightSwitch = LightSwitch.off
//lightSwitch.toggle()
//print(lightSwitch)
//enum LightSwitch : Togglable{
//    case off, on
//    mutating func toggle() {
//        switch self {
//        case .off:
//            self = .on
//        case .on:
//            self = .off
//        }
//    }
//}
//
//protocol Togglable {
//    mutating func toggle()
//}

//let generator = LinearCongruentialGenerator()
//let value = generator.random()
//print(value)

//class LinearCongruentialGenerator: RandomNumberGenerator {
//    var lastRandom = 42.0
//    let m = 139968.0
//    let a = 3877.0
//    let c = 29573.0
//    func random() -> Double {
//        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
//        return lastRandom / m
//    }
//}
//
//
//protocol RandomNumberGenerator {
//    func random() -> Double
//}

//class StarShip : SomeProtocol {
//    var prefix : String?
//    var name : String
//    init(name : String, prefix : String? = nil) {
//        self.name = name
//        self.prefix = prefix
//    }
//    var someString: String{
//        return (prefix != nil ? prefix! + "" : "") + name
//    }
//}

//struct Person : SomeProtocol{
//    var someString : String
//}

//struct SomeStructure : FirstProtocol, AnotherProtocol{
//    //结构体内容
//}

//func printLetterKinds(word : String){
//    print("\(word) is made up of the following kinds of letters")
//    for character in word.characters {
//        switch character.kind {
//        case .Vowel:
//            print("vowel")
//        case .Consonaut:
//            print("consonaut")
//        default:
//            print("other")
//        }
//    }
//
//}
//
//extension Character{
//    enum Kind {
//        case Vowel, Consonaut, Other
//    }
//    
//    var kind : Kind{
//        switch String(self).lowercased() {
//        case "a", "e", "i", "o", "u":
//            return .Vowel
//        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m","n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
//            return .Consonaut
//        default:
//            return .Other
//        }
//    }
//}

//print(123456789[10])
//extension Int{
//    subscript( digitIndex : Int) -> Int{
//        var index = digitIndex
//        var decimalBase = 1
//        while index > 0 {
//            decimalBase *= 10
//            index -= 1
//        }
//        return (self/decimalBase) % 10
//    }
//}

//3.repetitions {
//    print("Hello")
//}
//extension Int{
//    func repetitions(task : () -> ())  {
//        for i in 0..<self {
//            task()
//        }
//    }
//}

//let centerRect = Rect(center: Point(x : 4.0, y : 4.0), size: Size(width: 3.0, height: 3.0))
//print(centerRect)
//let defaultRect = Rect()
//let aRect = Rect(origin: Point(x : 2.0, y : 2.0 ), size: Size(width: 5.0, height: 5.0))
//extension Rect{
//    init(center : Point, size : Size) {
//        let originX = center.x - size.width * 0.5
//        let originY = center.y - size.height * 0.5
//        self.init(origin: Point(x : originX, y : originY), size: size)
//    }
//}
//
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//}

//let oneInch = 25.4.mm
//print("One inch is \(oneInch) meters")
//
//let threeFeet = 3.ft
//print("Three feet is \(threeFeet) meters")
//extension Double {
//    var km : Double {
//        return self * 1_000.0
//    }
//    
//    var m : Double {
//        return self
//    }
//    
//    var cm : Double {
//        return self/100.0
//    }
//
//    var mm : Double {
//        return self / 1_000.0
//    }
//    
//    var ft : Double {
//        return self/3.28084
//    }
//}

//struct BlackjackCard {
//    
//    //嵌套定义枚举型Suit
//    enum Suit : Character {
//        case Spades = "♠", Hearts = "♥", Diamonds = "□", Clubs = "♣"
//    }
//    
//    //嵌套定义枚举型Rank
//    enum Rank : Int {
//        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
//        case Jack, Queen, King, Ace
//        struct Values {
//            let first : Int, second : Int?
//        }
//        var values : Values{
//            switch self {
//            case .Ace:
//                return Values(first: 1, second: 11)
//            case .Jack, .Queen, .King:
//                return Values(first: 10, second: nil)
//            default:
//                return Values(first: self.rawValue, second: nil)
//            }
//        }
//    }
//}

//class MediaItem {
//    var name : String
//    init(name : String) {
//        self.name = name
//    }
//}
//
//class Movie : MediaItem{
//    var director : String
//    init(name : String, director : String) {
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class Song : MediaItem {
//    var artist : String
//    init(name : String, artist : String) {
//        self.artist = artist
//        super.init(name: name)
//    }
//}

//var things = [Any]()
//
//things.append(0)
//things.append(0.0)
//things.append(42)
//things.append(3.14259)
//things.append("hello")
//things.append((3.0, 5.0))
//things.append(Movie(name: "Ghost", director: "Ivan"))
//
//print(things)
//
//for thing in things {
//    switch thing {
//    case 0 as Int:
//        print("zero is an Int")
//    case 0 as Double:
//        print("zero is an Double")
//    case let someInt as Int:
//        print("an integer of \(someInt)")
//    case let someDouble as Double where someDouble > 0:
//        print("an double of \(someDouble)")
//    case is Double:
//        print("some double did not print")
//    case let someString as String:
//        print("an string of \(someString)")
//    case let (x, y) as (Double, Double):
//        print("an (x, y) of \(x)， \(y)")
//    case let movie as Movie:
//        print("an movie called \(movie.name), director is \(movie.director)")
//    default:
//        print("something else")
//    }
//}

//let someObject : [AnyObject] = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Movie(name: "Moon", director: "Duncan Jones"),
//    Movie(name: "Alien", director: "Ridley Scott")
//]
//
//for object in someObject {
//    let movie = object as! Movie
//    print("Movie:\(movie.name),\(movie.director)")
//}

//let library = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
//    Movie(name: "Citizen Kane", director: "Orson Welles"),
//    Song(name: "The one And Only", artist: "Chesney Hawkes"),
//    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
//]
//for item in library {
//    if let movie = item as? Movie{
//        print("Movie:\(movie.name),\(movie.director)")
//    }
//    else if let song = item as? Song{
//        print("Song:\(song.name),\(song.artist)")
//    }
//}

//var movieCount = 0
//var songCount = 0
//
//for item in library {
//    if item is Movie {
//        movieCount += 1
//    }
//    else if item is Song {
//        songCount += 1
//    }
//}

//print("song -- \(songCount)")
//print("movie -- \(movieCount)")

//        if let firstRoomName = join.residence?[0].name {
//            print("\(firstRoomName)")
//        }
//        else {
//            print("unable get")
//        }
//
//        let join = Person()
//        if join.residence?.printNumberOfRooms?(){
//            print("It was possible to print the number of rooms")
//        }
//        else {
//            print("It was not possible to print the number of rooms")
//        }

//        let join = Person()
//        if let roomCount = join.residence?.numberOfRooms {
//            print("John has \(roomCount) rooms")
//        }
//        else {
//            print("unable to retrieve the number of rooms")
//        }

//class Person {
//    var residence : Residence?
//}
//
//class Room {
//    let name : String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Address {
//    var buildingName : String?
//    var buildingNumber : String?
//    var street : String?
//    func buildingIdentify() -> String? {
//        if (buildingName?.characters.count)! > 0{
//            return buildingName
//        }
//        else if (buildingNumber?.characters.count)! > 0 {
//            return buildingNumber
//        }
//        else{
//            return nil
//        }
//    }
//}
//
//class Residence {
//    var rooms = [Room]()
//    var numberOfRooms : Int{
//        return rooms.count
//    }
//
//    subscript(i : Int) -> Room{
//        return rooms[i]
//    }
//
//    func printNumberOfRooms() {
//        print("The number of rooms is \(numberOfRooms)")
//    }
//
//    var address : Address?
//}

//var paragraph : HTMLElement? = HTMLElement(name: "p", text: "Hello,world")
//print(paragraph?.asHTML)
//class  HTMLElement {
//    let name : String
//    let text : String?
//    lazy var asHTML : () -> String = {
//        [unowned self] in
//        
//        if let text = self.text {
//            return "<\(self.name)>\(text)</\(self.name)>"
//        }
//        else {
//            return "<\(self.name)/>"
//        }
//    }
//    
//    init(name : String, text : String? = nil) {
//        self.name = name
//        self.text = text
//    }
//    
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}

//class Country {
//    let name : String
//    var capitalCity : City!
//    init(name : String, capitalName : String) {
//        self.name = name
//        self.capitalCity = City(name: capitalName, country: self)
//    }
//}
//
//
//class City {
//    let name : String
//    unowned let country : Country
//    init(name : String, country : Country) {
//        self.name = name
//        self.country = country
//    }
//}

//var john : Customer?
//john = Customer(name: "John")
//john!.card = CreditCard(number: 1234_5678_2333, customer: john!)
//
//john = nil
//class Customer {
//    let name : String
//    var card : CreditCard?
//    init(name : String) {
//        self.name = name
//    }
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//class CreditCard{
//    let number : Int
//    unowned let customer : Customer
//    init(number : Int, customer : Customer) {
//        self.number = number
//        self.customer = customer
//    }
//    deinit {
//        print("Card \(number) is being deinitialized")
//    }
//}

//var john : Person?
//var number : Apartment?
//john = nil
//number = nil
//
//john = Person(name: "John")
//number = Apartment(number: 73)
//
//john!.apartment = number
//number?.tenant = john
//class Person {
//    let name : String
//    init(name : String) {
//        self.name = name
//        print("\(name) is being initialized")
//    }
//    
//    var apartment : Apartment?
//    
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//class Apartment {
//    let number : Int
//    init(number : Int) {
//        self.number = number
//    }
//    weak var tenant : Person?
//    deinit {
//        print("Apartment \(number) is being deinitialized")
//    }
//}

//class Person {
//    let name : String
//    init(name : String) {
//        self.name = name
//        print("\(name) is being initialized")
//    }
//    
//    var apartment : Apartment?
//    
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//class Apartment {
//    let number : Int
//    init(number : Int) {
//        self.number = number
//    }
//    var tenant : Person?
//    deinit {
//        print("Apartment \(number) is being deinitialized")
//    }
//}

//reference1 = Person(name: "John")
//reference2 = Person(name: "Rose")
//reference3 = Person(name: "Nick")
//
//reference2 = nil
//reference3 = nil
//var reference1 : Person?
//var reference2 : Person?
//var reference3 : Person?


//class Player{
//    var coinsInPurse : Int
//    init(coins : Int){
//        coinsInPurse = Bank.vendCoins(number: coins)
//    }
//    
//    func winCoins(coins : Int) {
//    coinsInPurse += Bank.vendCoins(number: coins)
//    }
//    
//    deinit {
//        Bank.receiveCoins(coins: coinsInPurse)
//    }
//}

//struct Bank {
//    static var coinsInBank = 10_000
//    static func vendCoins(number numberOfCoinsToVend : Int) -> Int{
//        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
//        coinsInBank -= numberOfCoinsToVend
//        return numberOfCoinsToVend
//    }
//
//    static func receiveCoins(coins : Int){
//        coinsInBank += coins
//    }
//}

//let checkBoard = Checkboard()
//print(checkBoard.squareIsBlackAtRow(row: 0, column: 1))
//print(checkBoard.squareIsBlackAtRow(row: 9, column: 9))
//struct Checkboard {
//    let boardColors : [Bool] = {
//        var temporaryBorad = [Bool]()
//        var isBlack = false
//        for i in 1...10{
//            for j in 1...10 {
//                temporaryBorad.append(isBlack)
//                isBlack = !isBlack
//            }
//            isBlack = !isBlack
//        }
//        return temporaryBorad
//    }()
//    
//    func squareIsBlackAtRow(row : Int, column : Int) -> Bool {
//        return boardColors[(10 * row) + column]
//    }
//}

//class SomeClass{
//    let someProperty : SomeType = {
//        //在这个闭包中给someProperty创建一个默认值
//        //someValue必须和SomeType类型相同
//        return someValue
//    }()
//}

//var breakfastList = [
//    ShoppiingListItem(),
//    ShoppiingListItem(name: "bread"),
//    ShoppiingListItem(name: "egg", quantity: 10)
//]
//breakfastList[0].name = "orange juice"
//breakfastList[0].purchased = true
//
//for item in breakfastList {
//    print(item.description)
//}
//class ShoppiingListItem: RecipIngredient {
//    var purchased = false
//    var description : String{
//        var output = "\(quantity) x \(name)"
//        output += purchased ? "买" : "不买"
//        return output
//    }
//}

//let oneInstance = RecipIngredient()
//print(oneInstance.quantity)
//print(oneInstance.name)
//
//let twoInstance = RecipIngredient(name: "egg")
//print(twoInstance.quantity)
//print(twoInstance.name)
//
//let threeInstance = RecipIngredient(name: "egg", quantity: 10)
//print(threeInstance.quantity)
//print(threeInstance.name)
//class RecipIngredient: Food {
//    var quantity : Int
//    init(name : String, quantity : Int){
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    
//   override convenience  init(name: String) {
//        self.init(name: name, quantity: 1)
//    }
//}
//
//class Food {
//    var name : String
//    init(name : String) {
//        self.name = name
//    }
//    convenience init() {
//        self.init(name: "Unnamed")
//    }
//}

//        let basicRect = Rect()
//        print(basicRect.origin)
//        print(basicRect.size)

//        let originRect = Rect(origin: Point(x : 2.0, y : 2.0), size : Size(width: 5.0, height: 5.0))
//        print(originRect.origin)
//        print(originRect.size)
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Point {
//    var x = 0.0, y = 0.0
//}

//let centerRect = Rect(center: Point(x : 4.0, y : 4.0), size: Size(width: 3.0, height: 3.0))
//print(centerRect.origin)
//print(centerRect.size)

//struct Rect {
//    var origin = Point()
//    var size = Size()
//    init() {
//        
//    }
//    
//    init(origin : Point, size : Size) {
//        self.origin = origin
//        self.size = size
//    }
//    
//    init(center : Point, size : Size) {
//        let originX = center.x - size.width * 0.5
//        let originY = center.y - size.height * 0.5
//        self.init(origin: Point(x : originX, y : originY), size: size)
//    }
//}
//
//class ShoppingList{
//    var name : String?
//    var quatity = 1
//    var purchased = false
//}

//let cheeseQuestion = SurveyQuestion(text: "Do you like me?")
//cheeseQuestion.ask()
//cheeseQuestion.response = "YES, I do!"
//print(cheeseQuestion.response)
//class SurveyQuestion{
//    let text : String
//    var response : String?
//    init(text : String) {
//        self.text = text
//    }
//    
//    func ask(){
//        print(text)
//    }
//}

//let color = Color(red: 1.0, green: 1.0, blue: 1.0)
//print(color.red)
//print(color.green)
//print(color.blue)
//struct Color {
//    var red = 0.0, green = 0.0, blue = 0.0
//    init(red : Double, green : Double, blue : Double) {
//        self.red = red
//        self.green = green
//        self.blue = blue
//    }
//}

//let boillingPointOfWater = Celsuis(formFahrenheit: 212.0)
//let freezePointOfWater = Celsuis(fromKelvin: 273.15)
//print(boillingPointOfWater)
//print(freezePointOfWater)
//struct Celsuis {
//    var temperatureInCelsuis : Double = 0.0
//    init(formFahrenheit fahrenheit : Double) {
//        temperatureInCelsuis = (fahrenheit - 32.0) / 1.0
//    }
//    
//    init(fromKelvin kelvin : Double) {
//        temperatureInCelsuis = kelvin - 273.15
//    }
//}

//var f = Fahrenheit()
//print("temperature is \(f.temperature)")
//struct Fahrenheit {
//    var temperature : Double
//    init() {
//        temperature = 32.0
//    }
//}
























