//
//  StartViewController.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import UIKit

class StartViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var superheroLabel: UILabel!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var choseLabel: UILabel!
    @IBOutlet weak var supergirlImage: UIImageView!
    @IBOutlet weak var supermanImage: UIImageView!
    private let startViewModel = StartViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI(){
        setUpImage()
        setUpLabel()
        setUpButton()
        
        self.view.backgroundColor = .black
    }
    

    @IBAction func chooseCharacter(_ sender: UIButton) {
        let sex = sender.titleLabel?.text ?? " "
        ProfileManager.sharedInstance.createDefaultProfile(with: sex)
        coordinator?.home()
    }
    
    
    private func setUpImage(){
        supermanImage.image = UIImage(named: startViewModel.supermanImage)
        supergirlImage.image = UIImage(named: startViewModel.supergirImage)
        
        supermanImage.addBlackGradientLayerInForeground(frame: view.bounds, colors: [UIColor(red: 0, green: 0, blue: 0, alpha: 0.3),UIColor(red: 0, green: 0, blue: 0, alpha: 1), UIColor(red: 0, green: 0, blue: 0, alpha: 1)])
        supergirlImage.addBlackGradientLayerInForeground(frame: view.bounds, colors: [ UIColor(red: 0, green: 0, blue: 0, alpha: 1),UIColor(red: 0, green: 0, blue: 0, alpha: 0.3),UIColor(red: 0, green: 0, blue: 0, alpha: 0.05)])
        
        supermanImage.contentMode = .scaleAspectFill
        supergirlImage.contentMode = .scaleAspectFill
    }
    
    private func setUpButton(){
        maleButton.setTitle(startViewModel.maleButton, for: .normal)
        maleButton.backgroundColor = .Yellow
        maleButton.layer.cornerRadius = maleButton.frame.height/2
        femaleButton.tintColor = .black
        femaleButton.setTitle(startViewModel.femaleButton, for: .normal)
        femaleButton.backgroundColor = .Yellow
        femaleButton.layer.cornerRadius = femaleButton.frame.height/2
        femaleButton.tintColor = .black
    }
    
    private func setUpLabel(){
        superheroLabel.text = startViewModel.superheroLabel
        superheroLabel.textColor = .Yellow
        superheroLabel.font = .futuraWithSize32
        choseLabel.text = startViewModel.chooseLabel
        choseLabel.textColor = .white
        choseLabel.font = .sairaNormalWithSize16
    }
}
