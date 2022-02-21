//
//  UIColor+CustomColor.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import Foundation
import UIKit

extension UIColor {
    
    private convenience init(rgb: UInt) {
           self.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgb & 0x0000FF) / 255.0, alpha: CGFloat(1.0))
       }

      @objc static var Yellow: UIColor { return UIColor(rgb: 0xFFDB64) }
}
