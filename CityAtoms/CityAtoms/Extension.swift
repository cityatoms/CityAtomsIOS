//
//  Extension.swift
//  CityAtoms
//
//  Created by Moazzam Tahir on 02/04/2020.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addDropDownShadow(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
    }
}
