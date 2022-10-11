//
//  File: HomeViewModel.swift
//
//  Created by Ismael Sabri on 11/10/22.
//  Copyright (c) 2022 Ismael Sabri. All rights reserved.
//
import Foundation

protocol HomeViewModelProtocol: AnyObject {
    
}

class HomeViewModel {
    
    // MARK: - Private properties
    // MVC properties
    private weak var viewDelegate: HomeViewControllerProtocol?
    
    // MARK: - Lifecycle
    init(viewDelegate: HomeViewControllerProtocol) {
        self.viewDelegate = viewDelegate
    }
}

// MARK: - HomeViewModelProtocol extension
extension HomeViewModel: HomeViewModelProtocol {
    
}
