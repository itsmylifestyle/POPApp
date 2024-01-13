//
//  UserViewModel.swift
//  ProOUIKit
//
//  Created by Айбек on 13.01.2024.
//

import Foundation

class UserViewModel {
    
    weak var output : UserViewModelOutput?
    private let userService : UserService
    
    init(userService: UserService) {
        self.userService = userService
    }
    
    func fetchUsers() {
        userService.fetchUser { [weak self] res in
            switch res {
            case .success(let user):
                self?.output?.updateView(name: user.name, email: user.email, username: user.username)
            case.failure(_):
                self?.output?.updateView(name: "No user found", email: "", username: "")
            }
        }
    }
}
