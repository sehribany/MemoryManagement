//
//  DetailViewController.swift
//  MemoryLeakExample
//
//  Created by Şehriban Yıldırım on 13.10.2024.
//

import UIKit

class DetailViewController: UIViewController {
    //MARK: -Properties
    var teacher: Teacher?
    var student: Student?
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "This is the Detail View"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: -Init and Deinit
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.configureData()
    }
    
    deinit{
        print("DetailViewController Deinit.")
    }
    
    //MARK: - Data Configuration
    private func configureData(){
        teacher = Teacher(name: "Emily")
        student = Student(name: "John")
        teacher?.student = student
        student?.teacher = teacher
    }
    
    //MARK: -UILayout
    private func setup(){
        view.backgroundColor = .white
        view.addSubview(detailLabel)
        NSLayoutConstraint.activate([
            detailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
    }
}
