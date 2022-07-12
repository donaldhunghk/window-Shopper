//
//  CurrencyTextFieid.swift
//  Window-Shopper
//
//  Created by Ho Yin Hung on 9/7/2022.
//

import UIKit

@IBDesignable
class CurrencyTextFieid: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = UIColor.white
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = UIColor.gray
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    
    override func prepareForInterfaceBuilder() {
        customizeView()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
     
    }
    
    func customizeView() {
        backgroundColor = UIColor.black
        layer.cornerRadius = 5.0
        textAlignment = .center
    
    clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        
            }
    
    }
    

}
