////
////  JJStructVC.swift
////  JJSwift
////
////  Created by 池田 on 2017/7/21.
////  Copyright © 2017年 Zebra. All rights reserved.
////
//
//import UIKit
//
//protocol ExampleProtocol {
//    var simpleDescription : String { get }
//    mutating func adjust()
//}
//
//struct SimpleStructure : ExampleProtocol {
//    var simpleDescription: String
//    mutating func adjust() {
//        simpleDescription += " (adjust)"
//    }
//}
//
//class JJStructVC: UIViewController
//{
//
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//        
//        
//        //扩展
////        let a = 7.simpleDescription
////        print(a)
//        
//        //类的扩展
//        
////        //结构体协议的遵守
////        var b = SimpleStructure(simpleDescription: "A simple structure")
////        b.adjust()
////        let desc = b.simpleDescription
////        print(desc)
//
//        //类中协议的遵守
////        let a = SimpleClass()
////        a.adjust()
////        let desc = a.simpleDescription
////        print(desc)
//        
//        var a = 10;
//        var b = 20;
//        swapTwoValue(a: &a, b: &b)
//        print("a:\(a),b:\(b)")
//    }
//
//    
//    func swapTwoValue<T>(a : inout T, b : inout T){
//        let tempValue = a;
//        a = b;
//        b = tempValue;
//    }
//    
//
//}
//
//extension Int : ExampleProtocol {
//
//    var simpleDescription : String{
//        return "The number is \(self)"
//    }
//    mutating func adjust() {
//        self += 42
//    }
//}
//
//class SimpleClass : ExampleProtocol {
//
//    var simpleDescription: String = "It is a simple class."
//    var anotherProperty  : Int = 733800
//    
//    func adjust() {
//        simpleDescription += "Now 100% adjusted"
//    }
//}
