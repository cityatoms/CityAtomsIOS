//
//  CircleView.swift
//  CityAtoms
//
//  Created by Moazzam Tahir on 04/04/2020.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import UIKit

class CircleView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            context.setLineWidth(40)
            
            UIColor.red.set()
            
            let center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
            let radius = (frame.size.width - 65)/2
            context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
            
            //gradientLayer.render(in: context)
            
            context.strokePath()
        }
    }
}
