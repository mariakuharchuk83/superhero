//
//  HomeViewController.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var homeBackImage: UIImageView!
    @IBOutlet weak var sexHeroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setUpUI(){
        let homeViewModel = HomeViewModel()
        let sex = homeViewModel.profile?.sex
        sexHeroLabel.text = sex
        if(sex == "SUPERMAN"){
            homeBackImage.image = UIImage(named: homeViewModel.supermanImage )
        } else {
            homeBackImage.image = UIImage(named: homeViewModel.supergirlImage )
        }
        homeBackImage.addBlackGradientLayerInForeground(frame: view.bounds, colors: [UIColor(red: 0, green: 0, blue: 0, alpha: 0.3),UIColor(red: 0, green: 0, blue: 0, alpha: 1), UIColor(red: 0, green: 0, blue: 0, alpha: 1)])
    }
}
