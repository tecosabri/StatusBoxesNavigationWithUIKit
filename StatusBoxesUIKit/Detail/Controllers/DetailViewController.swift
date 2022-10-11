//
//  File: DetailViewController.swift
//
//  Created by Ismael Sabri on 11/10/22.
//  Copyright (c) 2022 Ismael Sabri. All rights reserved.
//
import UIKit

protocol DetailViewControllerProtocol: AnyObject {
    
}

class DetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Public properties
    // MVC properties
    var rootViewModel: RootViewModel
    var viewModel: DetailViewModelProtocol?
    
    // MARK: - Lifecycle
    init(rootViewModel: RootViewModel) {
        self.rootViewModel = rootViewModel
        super.init(nibName: "DetailView", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewModel()
    }
    
    private func setViewModel() {
        self.viewModel = DetailViewModel(viewDelegate: self)
    }
    
    @IBAction func goToHomeButton(_ sender: Any) {
        rootViewModel.activeView = .home
    }
    
    
    @IBAction func goToLogin(_ sender: Any) {
        rootViewModel.activeView = .login
    }
}

// MARK: - DetailViewControllerProtocol extension
extension DetailViewController: DetailViewControllerProtocol {
    
}
