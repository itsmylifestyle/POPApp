//
//  ViewController.swift
//  ProOUIKit
//
//  Created by Айбек on 13.01.2024.
//

import UIKit

class UserVC: UIViewController {
    
    private let nameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center

        return label
    }()
    
    private let username : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center

        return label
    }()
    
    private let email : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        FetchUser()
    }

    
    private func setupViews() {
        view.backgroundColor = .darkGray
        view.addSubview(email)
        view.addSubview(username)
        view.addSubview(nameLabel)
        
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 60),
            nameLabel.widthAnchor.constraint(equalToConstant: 200),
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            username.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            username.heightAnchor.constraint(equalToConstant: 60),
            username.widthAnchor.constraint(equalToConstant: 200),
            username.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 100),
            
            email.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            email.heightAnchor.constraint(equalToConstant: 60),
            email.widthAnchor.constraint(equalToConstant: 200),
            email.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 100),
            
        ])
        nameLabel.text = "Name"
        username.text = "username"
        email.text = "email"
    }
    
    private func FetchUser() {
        APIManager.shared.fetchUser { res in
            switch res {
            case.success(let user):
                self.username.text = user.username
                self.email.text = user.email
                self.nameLabel.text = user.name
                
            case.failure:
                self.username.text = "No user found"
                
            }
            
        }
    }

}

