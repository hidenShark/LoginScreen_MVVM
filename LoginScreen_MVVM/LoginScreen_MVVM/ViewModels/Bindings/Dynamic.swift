//
//  Dynamic.swift
//  LoginScreen_MVVM
//
//  Created by Илья Акулов on 01.03.2024.
//

import Foundation

class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet{
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
    
}
