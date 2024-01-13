//
//  UserViewModel.swift
//  ProOUIKit
//
//  Created by Айбек on 13.01.2024.
//

import Foundation

class UserViewModel {
    
    private let userService : UserService
    
    init(userService: UserService) {
        self.userService = userService
    }
    
    func fetchUsers() {
        userService.fetchUser { res in
            switch res {
            case .success(let user):
                print(user)
            case.failure(_):
                print("error")
            }
        }
    }
}
