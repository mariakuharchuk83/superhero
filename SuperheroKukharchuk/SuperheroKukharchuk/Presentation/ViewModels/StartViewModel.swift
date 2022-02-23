//
//  StertViewModel.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import Foundation


class StartViewModel {
    let supermanImage = "superman"
    let supergirImage = "supergirl"
    let maleButton = "SUPERMAN"
    let femaleButton = "SUPERGIRL"
    let superheroLabel = "SUPERHERO"
    let chooseLabel = "выберите героя"
    
    func createProfile(with sex: String) {
        ProfileManager.sharedInstance.createDefaultProfile(with: sex)
    }
}
