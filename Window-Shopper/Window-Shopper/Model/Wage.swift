//
//  Wage.swift
//  Window-Shopper
//
//  Created by Ho Yin Hung on 10/7/2022.
//

import Foundation
class Wage {
    class func getHours(forWage Wage: Double, andPrice price: Double) -> Int {
    return Int(ceil(price / Wage))
    }
}
