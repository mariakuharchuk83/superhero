//
//  UIView+Gradient.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import Foundation
import UIKit
import CoreGraphics

extension UIView{
    // For insert layer in Foreground
    func addBlackGradientLayerInForeground(frame: CGRect, colors:[UIColor]){
        let gradient = CAGradientLayer()
        gradient.frame = frame
        gradient.colors = colors.map{$0.cgColor}
        self.layer.addSublayer(gradient)
    }
    // For insert layer in background
    func addBlackGradientLayerInBackground(frame: CGRect, colors:[UIColor]){
        let gradient = CAGradientLayer()
        gradient.frame = frame
        gradient.colors = colors.map{$0.cgColor}
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func rounded() {
        layer.cornerRadius = bounds.height / 2
        layer.masksToBounds = true
        clipsToBounds = true
    }
}
