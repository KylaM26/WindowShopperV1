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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20;
        let currenyLbl = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size / 2, width: size, height: size));
        
        currenyLbl.backgroundColor = UIColor.clear;
        currenyLbl.textAlignment = .center;
        currenyLbl.textColor = UIColor.white;
        currenyLbl.layer.cornerRadius = 5.0;
        currenyLbl.clipsToBounds = true;
        
        let formatter = NumberFormatter(); // Making formatter
        formatter.numberStyle = .currency; // Currency style.
        formatter.locale = .current;  // The location, will determine what currency
        
        currenyLbl.text = formatter.currencySymbol;
        addSubview(currenyLbl);
    }
    
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
        self.clipsToBounds = true;
        
        if let p = placeholder { // If there is a placeholder text.
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white]); // Attributed string gives more properties than regular string.
            attributedPlaceholder = place; // Will override regular place holder.
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        }
    }
}
