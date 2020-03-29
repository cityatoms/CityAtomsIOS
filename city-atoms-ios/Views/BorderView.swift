//
//  borderLine.swift
//  city-atoms-ios
//
//  Created by Ahad Islam on 3/22/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

@IBDesignable
class BorderView: UIView {
    @IBInspectable var borderWidth: CGFloat = 0

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderWidth = borderWidth
        layer.borderColor = UIColor(named: "brownGrey")?.cgColor
    }

}
