//
//  UIFont+CustomFont.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import Foundation
import UIKit

extension UIFont {
    
    @objc static var futuraWithSize32: UIFont {
        return UIFont(name: "Futura", size: 32)! }
    
    @objc static var sairaLightWithSize16: UIFont {
        return UIFont(name: "Saira-Light", size: 16) ?? UIFont.systemFont(ofSize: 16)  }

}
