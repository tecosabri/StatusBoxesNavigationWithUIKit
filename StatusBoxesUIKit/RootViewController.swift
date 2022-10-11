//
//  RootViewController.swift
//  StatusBoxesUIKit
//
//  Created by Ismael Sabri Pérez on 11/10/22.
//

import Foundation


enum Status {
    case login, home, detail
}

final class RootViewModel {
    
    var activeView: Status = .login {
        didSet {
            print("New value of activeView is \(activeView)")
            if oldValue != activeView {
                self.onViewChange?()
            }
        }
    }
    
    var onViewChange: (() -> Void)?
}
