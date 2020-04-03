//
//  SymptomsViewController.swift
//  CityAtoms
//
//  Created by Moazzam Tahir on 03/04/2020.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import UIKit

class SymptomsViewController: UIViewController {

    @IBOutlet var cell1: UIView!
    @IBOutlet var cell2: UIView!
    @IBOutlet var cell3: UIView!
    @IBOutlet var cell4: UIView!
    @IBOutlet var cell5: UIView!
    @IBOutlet var cell6: UIView!
    
    @IBOutlet var saveSymptomsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeUI()
    }
    
    func initializeUI() {
        let tapGesture1 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell1))
        cell1.isUserInteractionEnabled = true
        cell1.addGestureRecognizer(tapGesture1)
        
        let tapGesture2 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell2))
        cell2.isUserInteractionEnabled = true
        cell2.addGestureRecognizer(tapGesture2)
        
        let tapGesture3 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell3))
        cell3.isUserInteractionEnabled = true
        cell3.addGestureRecognizer(tapGesture3)
        
        let tapGesture4 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell4))
        cell4.isUserInteractionEnabled = true
        cell4.addGestureRecognizer(tapGesture4)
    
        let tapGesture5 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell5))
        cell5.isUserInteractionEnabled = true
        cell5.addGestureRecognizer(tapGesture5)
        
        let tapGesture6 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell6))
        cell6.isUserInteractionEnabled = true
        cell6.addGestureRecognizer(tapGesture6)
    }
   
    @objc
    func selectCell1() {
        if let image = cell1.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let label = cell1.viewWithTag(2) {
            let text = label as! UILabel
            print(text.text)
        }
    }
    
    @objc
    func selectCell2() {
        if let image = cell2.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let label = cell2.viewWithTag(2) {
            let text = label as! UILabel
            print(text.text)
        }
    }
    
    @objc
    func selectCell3() {
        if let image = cell3.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let label = cell3.viewWithTag(2) {
            let text = label as! UILabel
            print(text.text)
        }
    }
    
    @objc
    func selectCell4() {
        if let image = cell4.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let label = cell4.viewWithTag(2) {
            let text = label as! UILabel
            print(text.text)
        }
    }
    
    @objc
    func selectCell5() {
        if let image = cell5.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let label = cell5.viewWithTag(2) {
            let text = label as! UILabel
            print(text.text)
        }
    }
    
    @objc
    func selectCell6() {
        if let image = cell6.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let label = cell6.viewWithTag(2) {
            let text = label as! UILabel
            print(text.text)
        }
    }
    
    @IBAction func saveSymptoms(_ sender: Any) {
        
    }
    
}
