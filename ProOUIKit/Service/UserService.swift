//
//  UserService.swift
//  ProOUIKit
//
//  Created by Айбек on 13.01.2024.
//

import Foundation

protocol UserService {
    func fetchUser(completion: @escaping(Result<User, Error>) -> Void)
}
