//
//  File: HomeViewController.swift
//
//  Created by Ismael Sabri on 11/10/22.
//  Copyright (c) 2022 Ismael Sabri. All rights reserved.
//
import UIKit

protocol HomeViewControllerProtocol: AnyObject {
    
}

class HomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Public properties
    // MVC properties
    var rootViewModel: RootViewModel
    var viewModel: HomeViewModelProtocol?
    
    // MARK: - Lifecycle
    
    init(rootViewModel: RootViewModel) {
        self.rootViewModel = rootViewModel
        super.init(nibName: "HomeView", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewModel()
    }
    
    private func setViewModel() {
        self.viewModel = HomeViewModel(viewDelegate: self)
    }
    
    
    @IBAction func goToDetailButton(_ sender: Any) {
        rootViewModel.activeView = .detail
    }
}

// MARK: - HomeViewControllerProtocol extension
extension HomeViewController: HomeViewControllerProtocol {
    
}
