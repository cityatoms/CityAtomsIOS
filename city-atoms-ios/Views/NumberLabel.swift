//
//  NumberLabel.swift
//  city-atoms-ios
//
//  Created by Ahad Islam on 3/22/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

@IBDesignable
class NumberLabel: UILabel {
    @IBInspectable var isGreen: Bool = true

    override func layoutSubviews() {
        layer.cornerRadius = 5
        backgroundColor = isGreen ? UIColor(named: "offWhite") : UIColor(named: "paleGrey")
    }

}
