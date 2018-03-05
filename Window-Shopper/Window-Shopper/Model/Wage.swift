//
//  Wage.swift
//  Window-Shopper
//
//  Created by Taha Syed on 2/7/18.
//  Copyright © 2018 Taha Syed. All rights reserved.
//

import Foundation


class Wage {
    class func  getHours(forWage wage: Double, andPrice price:Double) -> Int {
    return Int(ceil(price / wage))
}
}
