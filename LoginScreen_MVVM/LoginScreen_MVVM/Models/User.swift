//
//  User.swift
//  LoginScreen_MVVM
//
//  Created by Илья Акулов on 27.02.2024.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "qwerty", password: "12345")
    ]
}
