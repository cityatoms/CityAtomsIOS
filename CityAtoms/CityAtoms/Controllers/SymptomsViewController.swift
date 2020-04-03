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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = cell1.viewWithTag(1) {
            let img = image as! UIImageView
            print(img.image?.size)
        }
        
        if let image = cell2.viewWithTag(2) {
            print("Found \(image as! UILabel)")
        }
    }
    
    
}
