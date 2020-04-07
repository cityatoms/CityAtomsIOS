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
        
        let rightBarButton = UIBarButtonItem(title: "Update Symptoms", style: .plain, target: self, action: #selector(pushToSymptomsView))
        navigationItem.rightBarButtonItem = rightBarButton
    }

    
    @objc
    func pushToSymptomsView() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "symptoms")
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
