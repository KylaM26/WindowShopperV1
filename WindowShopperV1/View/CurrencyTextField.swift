//
//  CurrencyTextField.swift
//  WindowShopperV1
//
//  Created by Kyla Wilson on 6/16/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        SetPlaceHolderAttributes(); // So this class can be seen in storyboard
    }

    override func awakeFromNib() {
        super.awakeFromNib();
        
        SetPlaceHolderAttributes();
    }
    
    func SetPlaceHolderAttributes() {
        self.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2497124233);
        self.layer.cornerRadius = 5.0;
        self.textAlignment = .center;
        
        if let p = placeholder { // If there is a placeholder text.
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white]); // Attributed string gives more properties than regular string.
            attributedPlaceholder = place; // Will override regular place holder.
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        }
    }
    
}
