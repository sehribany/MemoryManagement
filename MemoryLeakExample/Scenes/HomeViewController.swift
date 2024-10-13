//
//  HomeViewController.swift
//  MemoryLeakExample
//
//  Created by Şehriban Yıldırım on 13.10.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: -Properties
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go To Detail", for: .normal)
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    //MARK: -UILayout
    private func setup(){
        view.backgroundColor = .white
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)])
        
        nextButton.addTarget(self, action: #selector(goToDetail), for: .touchUpInside)
    }
    
    @objc private func goToDetail() {
        let detailVC = DetailViewController()
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
