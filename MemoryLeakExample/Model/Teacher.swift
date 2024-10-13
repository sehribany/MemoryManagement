//
//  Teacher.swift
//  MemoryLeakExample
//
//  Created by Şehriban Yıldırım on 13.10.2024.
//

import Foundation

//MARK: -Teacher
class Teacher {
    let name: String
    var student: Student?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) öğretmen bellekten temizlendi")
    }
}
