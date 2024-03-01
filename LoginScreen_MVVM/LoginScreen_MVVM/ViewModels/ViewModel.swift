//
//  ViewModel.swift
//  LoginScreen_MVVM
//
//  Created by Илья Акулов on 27.02.2024.
//

import Foundation
//ViewModel - UI независима, но если очень хочется то можно(но это не точно)
import UIKit

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPress(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in failed."
            statusColor.value = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        } else {
            statusText.value = "You successfull logged in."
            statusColor.value = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
}
