//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Taha Syed on 2/6/18.
//  Copyright © 2018 Taha Syed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resulttxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        calcBtn.setTitle("CALCULATE", for: .normal)
        calcBtn.titleLabel?.font =  UIFont(name: "Avenir-Medium", size: 14)
        calcBtn.setTitleColor(#colorLiteral(red: 0.03921568627, green: 0.7843137255, blue: 0.7058823529, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resulttxt.isHidden = true
        result.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wgae = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                result.isHidden = false
                resulttxt.isHidden = false
                result.text = "\(Wage.getHours(forWage: wgae, andPrice: price))"
            }
        }
    }

    @IBAction func clear(_ sender: Any) {
        result.isHidden = true
        resulttxt.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    
}



