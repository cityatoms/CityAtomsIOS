//
//  MainViewController.swift
//  CityAtoms
//
//  Created by Moazzam Tahir on 04/04/2020.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var GreyLinkView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeUI()
    }
    
    func initializeUI() {
        GreyLinkView.layer.cornerRadius = 10
    }

}
