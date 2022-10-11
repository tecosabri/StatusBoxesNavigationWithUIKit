//
//  File: LoginViewController.swift
//
//  Created by Ismael Sabri on 11/10/22.
//  Copyright (c) 2022 Ismael Sabri. All rights reserved.
//
import UIKit

protocol LoginViewControllerProtocol: AnyObject {
    
}

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Public properties
    // MVC properties
    var rootViewModel: RootViewModel
    var viewModel: LoginViewModelProtocol?
    
    // MARK: - Lifecycle
    init(rootViewModel: RootViewModel) {
        self.rootViewModel = rootViewModel
        super.init(nibName: "LoginView", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewModel()
    }
    
    private func setViewModel() {
        self.viewModel = LoginViewModel(viewDelegate: self)
    }
    
    
    @IBAction func goToHomeButton(_ sender: Any) {
        rootViewModel.activeView = .home
    }
}

// MARK: - LoginViewControllerProtocol extension
extension LoginViewController: LoginViewControllerProtocol {
    
}
