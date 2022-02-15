//
//  Coordinator.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 15.02.2022.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    
    func start()
}
