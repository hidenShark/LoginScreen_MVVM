//
//  ViewController.swift
//  LoginScreen_MVVM
//
//  Created by Илья Акулов on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var statusTextLabel: UILabel!
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    @IBAction func loginButtonPress(_ sender: UIButton) {
        viewModel.userButtonPress(login: loginTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    

    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusTextLabel.text = statusText
            }
        })
        viewModel.statusColor.bind({ (statusColor) in
            DispatchQueue.main.async {
                self.statusTextLabel.textColor = statusColor
            }
        })
    }

}

