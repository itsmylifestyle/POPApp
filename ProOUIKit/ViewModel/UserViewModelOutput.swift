//
//  UserViewModelOutput.swift
//  ProOUIKit
//
//  Created by Айбек on 13.01.2024.
//

import Foundation

protocol UserViewModelOutput : AnyObject {
    func updateView(name: String, email: String, username: String)
}
