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
    
    @objc static var sairaNormalWithSize16: UIFont {
        return UIFont(name: "Saira", size: 16) ?? UIFont.systemFont(ofSize: 16)  }

    @objc static var sairaRegularWithSiz24: UIFont {
        return UIFont(name: "SairaRoman-Regular", size: 24) ?? UIFont.systemFont(ofSize: 24) }
}
