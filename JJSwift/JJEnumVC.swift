////
////  JJEnumVC.swift
////  JJSwift
////
////  Created by 池田 on 2017/7/20.
////  Copyright © 2017年 Zebra. All rights reserved.
////
//
//import UIKit
//
//enum Rank : Int {
//    
//    case Ace = 1
//    case Two, Three, Four, Five
//    case Jack, Lucy, Queen
//    func simpleDescription() -> String{
//        switch self {
//        case .Ace:
//            return "Ace"
//        case .Jack:
//            return "Jack"
//        case .Queen:
//            return "Queen"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//
//
//enum Suit {
//    case Spades, Hearts, Diamonds, Clubs
//    func simpleDescription() -> String {
//        switch self {
//        case .Spades:
//            return "spades"
//        case .Hearts:
//            return "hearts"
//        case .Diamonds:
//            return "diamonds"
//        case .Clubs:
//            return "clubs"
//        }
//    }
//}
//
//struct Card {
//    var rank : Rank
//    var suit : Suit
//    func simpleDescription() -> String{
//    
//        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//
//enum ServerResponse {
//    case Result(String, String)
//    case Error(String)
//}
//
//enum OptionalValue <T>{
//    case None
//    case Some(T)
//}
//
//class JJEnumVC: UIViewController
//{
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//        
//        //泛型枚举
////        var possibleInteger : OptionalValue<Int> = .None
////        possibleInteger = .Some(100)
////        print(possibleInteger)
//        
//        //枚举的实例值和原始值
////        let success = ServerResponse.Result("6 : 00 am", "8 : 00 pm")
////        let failure = ServerResponse.Error("Out of cheese")
////        
////        switch success {
////        case let .Result(sunrise, sunset):
////            let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
////            print(serverResponse)
////        case let .Error(error):
////            let serverResponse = "Failure...\(error)"
////            print(serverResponse)
////        }
//        
//        
//       //简单结构体的创建
////        let threeOfSpades = Card(rank : .Three, suit : .Spades)
////        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
////        print(threeOfSpadesDescription)
//        
//        
////        let ace = Rank.Ace
////        let aceRawValue = ace.rawValue
////        
////        print(ace)
////        print(aceRawValue)
//        
////        if let convertRank = Rank(rawValue: 3){
////        
////            let description = convertRank.simpleDescription()
////            print(description)
////        }
//        
////        let hearts = Suit.Hearts
////        let heartDescription = hearts.simpleDescription()
////        print(heartDescription)
//        
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
//
