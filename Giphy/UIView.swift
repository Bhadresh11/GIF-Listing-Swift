//
//  view+Extension.swift
//  itsKeedi
//
//  Created by Apple on 17/05/22.
//

import UIKit

extension UIView {

    func roundCorners(radius: CGFloat = 8, borderColor: UIColor = .clear, borderWidht:CGFloat = 1.0) {
        self.layer.cornerRadius = radius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidht
        self.clipsToBounds = true
    }
}



//MARK: - load XIB view
public protocol NibInstantiatable {
    
    static func nibName() -> String
    
}

extension NibInstantiatable {
    
    static func nibName() -> String {
        return String(describing: self)
    }
    
}

extension NibInstantiatable where Self: UIView {
    
    static func fromNib() -> Self {
        
        let bundle = Bundle(for: self)
        let nib = bundle.loadNibNamed(nibName(), owner: self, options: nil)
        
        return nib!.first as! Self
        
    }
    
}
