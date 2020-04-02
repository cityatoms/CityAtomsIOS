//
//  ViewController.swift
//  CityAtoms
//
//  Created by Feras Alnatsheh on 4/1/20.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel! //welcome name label
    @IBOutlet var healthyFaceView: UIView! //first cell
    @IBOutlet var sickFaceView: UIView! //second cell
    @IBOutlet var maskFaceView: UIView! //third cell
    @IBOutlet var virusFaceView: UIView! //forth cell
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUI()
    }
    
    func initializeUI() {
        sickFaceView.addDropDownShadow(color: .gray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        maskFaceView.addDropDownShadow(color: .gray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        virusFaceView.addDropDownShadow(color: .gray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        healthyFaceView.addDropDownShadow(color: .gray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        
        sickFaceView.layer.cornerRadius = 5
        maskFaceView.layer.cornerRadius = 5
        virusFaceView.layer.cornerRadius = 5
        healthyFaceView.layer.cornerRadius = 5
        
        
    }

}

