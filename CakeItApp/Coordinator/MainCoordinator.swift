//
//  MainCoordinator.swift
//  CakeItApp
//
//  Created by Binal on 20/09/21.
//

import Foundation

import UIKit

protocol Coordinator:AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard  let vc =  UIStoryboard(name:"Main", bundle: nil).instantiateViewController(identifier:"CakeListViewController") as? CakeListViewController else {
            return
        }
        vc.coordinator = self
        vc.viewModel = CakeListViewModel(delegate:vc)
        navigationController.pushViewController(vc, animated: false)
    }
    
}
