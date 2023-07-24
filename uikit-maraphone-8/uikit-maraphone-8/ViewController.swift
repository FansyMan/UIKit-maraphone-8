//
//  ViewController.swift
//  uikit-maraphone-8
//
//  Created by kamaz on 24.07.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    private let avatarBarItem = UIImageView()
    private let scrollView = UIScrollView()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        guard let UINavigationBarLargeTitleView = NSClassFromString("_UINavigationBarLargeTitleView") else { return }
        
        navigationBar.subviews.forEach { subview in
            if subview.isKind(of: UINavigationBarLargeTitleView.self) {
                let someView = UIImageView()
                someView.image = UIImage(systemName: "person.crop.circle.fill")
                someView.translatesAutoresizingMaskIntoConstraints = false
                subview.addSubview(someView)
                
                NSLayoutConstraint.activate([
                    someView.trailingAnchor.constraint(equalTo: subview.trailingAnchor, constant: -16),
                    someView.bottomAnchor.constraint(equalTo: subview.bottomAnchor, constant: -12),
                    someView.widthAnchor.constraint(equalToConstant: 36),
                    someView.heightAnchor.constraint(equalToConstant: 36)
                ])
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.frame = view.bounds
        scrollView.delegate = self
        scrollView.contentSize = .init(width: view.frame.width, height: 1000)
        view.addSubview(scrollView)
        
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Avatar"
       
    }
    
    @objc func taptap() {
        
    }
}

