//
//  Helpers.swift
//  YesNoApp
//
//  Created by codingpixel on 13/09/2021.
//

import Foundation
import UIKit

@IBDesignable
class CardView: UIView {
    
    
    
//    myView.layer.shadowColor = UIColor.gray.cgColor
//    myView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
//    myView.layer.shadowRadius = 12.0
//    myView.layer.shadowOpacity = 0.7
    
    
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.shadowRadius = newValue
            layer.masksToBounds = false
        }
    }
    
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.shadowRadius = newValue
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var shadowColor: CGColor {
        get {
            return layer.shadowColor ?? UIColor.gray.cgColor
        }
        set {
            layer.shadowColor = newValue
            layer.shadowColor = newValue
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
            layer.shadowColor = UIColor.darkGray.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
            layer.shadowColor = UIColor.black.cgColor
            layer.masksToBounds = false
        }
    }
    
}
