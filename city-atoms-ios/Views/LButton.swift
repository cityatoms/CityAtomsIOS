//
//  LButton.swift
//  city-atoms-ios
//
//  Created by Ahad Islam on 3/22/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

@IBDesignable
class LButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
    }

}
