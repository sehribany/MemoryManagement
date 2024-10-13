//
//  Student.swift
//  MemoryLeakExample
//
//  Created by Şehriban Yıldırım on 13.10.2024.
//

import Foundation

//MARK: -Student
class Student {
    let name: String
    weak var teacher: Teacher?  //memory leak oluşumunu engelledik.
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) öğrenci bellekten temizlendi")
    }
}

