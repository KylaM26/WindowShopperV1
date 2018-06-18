//
//  Wage.swift
//  WindowShopperV1
//
//  Created by Kyla Wilson on 6/16/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import Foundation

class Wage {
    
    class func GetHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage)); // Ceil rounds up when there is a decimal
    }
}
