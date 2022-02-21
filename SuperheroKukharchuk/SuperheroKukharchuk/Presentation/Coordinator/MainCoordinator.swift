//
//  MainCoordinator.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 15.02.2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(naviagtionController: UINavigationController){
        self.navigationController = naviagtionController
    }
    
    func start() {
        let vc = StartViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func home() {
        let vc = HomeViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
