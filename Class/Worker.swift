//
//  Worker.swift
//  Class
//
//  Created by Harbros47 on 15.12.20.
//

import Foundation

class Worker {
    var name: String
    var lastName: String
    var inPlace = Bool.random()
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    func presenceOfAnEmployee() -> String {
        inPlace ? "сегодня вышел на работу" : "сегодня не вышел на работу"
    }
}
