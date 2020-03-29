//
//  CheckButton.swift
//  city-atoms-ios
//
//  Created by Ahad Islam on 3/22/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

@IBDesignable
class CheckButton: UIButton {
    @IBInspectable var borderWidth: CGFloat = 0
    @IBInspectable var isGreen: Bool = true

    override func layoutSubviews() {
        super.layoutSubviews()

        layer.masksToBounds = true
        layer.cornerRadius = self.frame.height / 2
        layer.borderWidth = borderWidth
        layer.borderColor = isGreen ? UIColor(named: "green")?.cgColor : UIColor(named: "purpleishBlue")?.cgColor
    }

}
