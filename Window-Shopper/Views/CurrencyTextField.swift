//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by Taha Syed on 2/6/18.
//  Copyright © 2018 Taha Syed. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.7843137255, blue: 0.7058823529, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.8476027397)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()

    }
        
        func customizedView() {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            clipsToBounds = true

            
            
            if let p = placeholder {
                let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 0.03921568627, green: 0.7843137255, blue: 0.7058823529, alpha: 1)
                
            }
        }

        
    }


