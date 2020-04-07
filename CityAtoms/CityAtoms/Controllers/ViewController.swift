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
        sickFaceView.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        maskFaceView.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        virusFaceView.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        healthyFaceView.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
        
        sickFaceView.layer.cornerRadius = 8
        maskFaceView.layer.cornerRadius = 8
        virusFaceView.layer.cornerRadius = 8
        healthyFaceView.layer.cornerRadius = 8
        
        addGestures()
    }
    
    func addGestures() {
        let tapGesture1 = UITapGestureRecognizer.init(target: self, action: #selector(pushVCtoSymptoms))
        sickFaceView.addGestureRecognizer(tapGesture1)
        
        let tapGesture2 = UITapGestureRecognizer.init(target: self, action: #selector(pushVCtoMain))
        maskFaceView.addGestureRecognizer(tapGesture2)
        
        let tapGesture3 = UITapGestureRecognizer.init(target: self, action: #selector(pushVCtoMain))
        virusFaceView.addGestureRecognizer(tapGesture3)
        
        let tapGesture4 = UITapGestureRecognizer.init(target: self, action: #selector(pushVCtoMain))
        healthyFaceView.addGestureRecognizer(tapGesture4)
    }

    @objc
    func pushVCtoMain() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "main")
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc
    func pushVCtoSymptoms() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "symptoms") 
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

