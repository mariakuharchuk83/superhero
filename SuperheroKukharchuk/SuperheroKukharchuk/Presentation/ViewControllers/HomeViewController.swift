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
    
    let homeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setUpUI()
    }
    
    private func setUpUI(){
        setUpLabel()
        setUpImage()
    }
    
    
    private func setUpLabel(){
        sexHeroLabel.text = homeViewModel.profile?.sex?.capitalized
        sexHeroLabel.textColor = .white
        sexHeroLabel.font = .sairaRegularWithSiz24
    }
    
    private func setUpImage(){
        print(sexHeroLabel.text)
        if(sexHeroLabel.text == "Superman"){
            homeBackImage.image = UIImage(named: homeViewModel.supermanImage )
        } else {
            homeBackImage.image = UIImage(named: homeViewModel.supergirlImage )
        }
        homeBackImage.addBlackGradientLayerInForeground(frame: view.bounds, colors: [UIColor(red: 0, green: 0, blue: 0, alpha: 0.3),UIColor(red: 0, green: 0, blue: 0, alpha: 1), UIColor(red: 0, green: 0, blue: 0, alpha: 1)])
    }
}
