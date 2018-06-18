//
//  ViewController.swift
//  WindowShopperV1
//
//  Created by Kyla Wilson on 6/16/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTextField!
    @IBOutlet weak var itemPriceTxtField: CurrencyTextField!
    
    @IBOutlet weak var hourCountLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CreateCalculateButton();
        hourCountLbl.isHidden = true;
        hoursLbl.isHidden = true;
    }
    
    func CreateCalculateButton() {
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60)); // Creating calculate btn
        // Setting Attributes
        calculateBtn.backgroundColor = #colorLiteral(red: 0.9651773594, green: 0.625663098, blue: 0.1504388503, alpha: 1);
        calculateBtn.setTitle("Calculate", for: UIControlState.normal);
        calculateBtn.setTitleColor(UIColor.white, for: UIControlState.normal);
        calculateBtn.addTarget(self, action: #selector(MainVC.Calculate), for: UIControlEvents.touchUpInside); // Adds a function to a button, needs @objc in front of function so that it knows it is an objective-c thing.
        
        // On click of the text field, this will toggle the calculate button, so it is visible. Comment out lines if still lost.`
        wageTxtField.inputAccessoryView = calculateBtn;
        itemPriceTxtField.inputAccessoryView = calculateBtn;
        
    }
    
    @objc func Calculate() {
        if let wageText = wageTxtField.text, let priceTxt = itemPriceTxtField.text { // If there is data in the text fields
            if let wage = Double(wageText), let price = Double(priceTxt) { // Take text, turn it into a double
                view.endEditing (true);
                hoursLbl.isHidden = false;
                hourCountLbl.isHidden = false;
                hourCountLbl.text = "\(Wage.GetHours(forWage: wage, andPrice: price))";
            }
            
        }
    }

    @IBAction func ClearCalculatorPressed(_ sender: Any) {
        hourCountLbl.isHidden = true;
        hoursLbl.isHidden = true;
        wageTxtField.text = "";
        itemPriceTxtField.text = "";
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

