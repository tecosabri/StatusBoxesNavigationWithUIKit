//
//  File: DetailViewModel.swift
//
//  Created by Ismael Sabri on 11/10/22.
//  Copyright (c) 2022 Ismael Sabri. All rights reserved.
//
import Foundation

protocol DetailViewModelProtocol: AnyObject {
    
}

class DetailViewModel {
    
    // MARK: - Private properties
    // MVC properties
    private weak var viewDelegate: DetailViewControllerProtocol?
    
    // MARK: - Lifecycle
    init(viewDelegate: DetailViewControllerProtocol) {
        self.viewDelegate = viewDelegate
    }
}

// MARK: - DetailViewModelProtocol extension
extension DetailViewModel: DetailViewModelProtocol {
    
}
