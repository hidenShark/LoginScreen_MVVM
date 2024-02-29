//
//  ViewController.swift
//  LoginScreen_MVVM
//
//  Created by Илья Акулов on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }

    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
            
        }
        )
    }

}

