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
    
    var arr = [false, false, false, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUI()
    }
    
    func initializeUI() {
        //MARK: Tap Gestures
        //added tap gestures to every view along with targets
        
        let tapGesture1 = UITapGestureRecognizer.init(target: self, action: #selector(selectCell1(_:)))
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
        
        saveSymptomsButton.layer.cornerRadius = 30
    }
    
    //MARK: Actions for each corresponding gesture
    
    @objc
    func selectCell1(_ sender: UITapGestureRecognizer) {
        self.arr[0].toggle()
        
        if arr[0] {
            UIView.animate(withDuration: 0.2) {
                self.cell1.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
                self.cell1.backgroundColor = UIColor(named: "backgroundColor")
                
                if let image = self.cell1.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "ThroatBlue")
                }
                
                if let label = self.cell1.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = UIColor(named: "TextColor")
                }
                
                self.saveSymptomsButton.backgroundColor = UIColor(named: "ButtonColor")
                self.saveSymptomsButton.isEnabled = true
            }
        } else {
            UIView.animate(withDuration: 0.2, animations:  {
                self.cell1.addDropDownShadow(color: .clear, opacity: 0, offset: .zero, radius: 0)
                self.cell1.backgroundColor = UIColor(named: "CustomGrey")
                
                if let image = self.cell1.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "ThroatGrey")
                }
                
                if let label = self.cell1.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = .black
                }
            }) { _ in
                if !self.arr.contains(true) {
                    self.saveSymptomsButton.isEnabled = false
                    self.saveSymptomsButton.backgroundColor = UIColor(named: "CustomGrey")                }
            }
        }
    }
    
    @objc
    func selectCell2() {
        self.arr[1].toggle()
        
        if arr[1] {
            UIView.animate(withDuration: 0.2) {
                self.cell2.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
                self.cell2.backgroundColor = UIColor(named: "backgroundColor")
                
                if let image = self.cell2.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "CoughBlue")
                }
                
                if let label = self.cell2.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = UIColor(named: "TextColor")
                }
                
                self.saveSymptomsButton.backgroundColor = UIColor(named: "ButtonColor")
                self.saveSymptomsButton.isEnabled = true
            }
        } else {
            UIView.animate(withDuration: 0.2) {
                self.cell2.addDropDownShadow(color: .clear, opacity: 0, offset: .zero, radius: 0)
                self.cell2.backgroundColor = UIColor(named: "CustomGrey")
                
                if let image = self.cell2.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "CoughGrey")
                }
                
                if let label = self.cell2.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = .black
                }
                
                if !self.arr.contains(true) {
                    self.saveSymptomsButton.isEnabled = false
                    self.saveSymptomsButton.backgroundColor = UIColor(named: "CustomGrey")
                }
            }
        }
    }
    
    @objc
    func selectCell3() {
        self.arr[2].toggle()
        
        if arr[2] {
            UIView.animate(withDuration: 0.2) {
                self.cell3.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
                self.cell3.backgroundColor = UIColor(named: "backgroundColor")
                
                if let image = self.cell3.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "FeverBlue")
                }
                
                if let label = self.cell3.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = UIColor(named: "TextColor")
                }
                
                self.saveSymptomsButton.backgroundColor = UIColor(named: "ButtonColor")
                self.saveSymptomsButton.isEnabled = true
            }
        } else {
            UIView.animate(withDuration: 0.2) {
                self.cell3.addDropDownShadow(color: .clear, opacity: 0, offset: .zero, radius: 0)
                self.cell3.backgroundColor = UIColor(named: "CustomGrey")
                
                if let image = self.cell3.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "FeverGrey")
                }
                
                if let label = self.cell3.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = .black
                }
                
                if !self.arr.contains(true) {
                    self.saveSymptomsButton.isEnabled = false
                    self.saveSymptomsButton.backgroundColor = UIColor(named: "CustomGrey")
                }
            }
        }
    }
    
    @objc
    func selectCell4() {
        self.arr[3].toggle()
        
        if arr[3] {
            UIView.animate(withDuration: 0.2) {
                self.cell4.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
                self.cell4.backgroundColor = UIColor(named: "backgroundColor")
                
                if let image = self.cell4.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "BreatheBlue")
                }
                
                if let label = self.cell4.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = UIColor(named: "TextColor")
                }
                
                self.saveSymptomsButton.backgroundColor = UIColor(named: "ButtonColor")
                self.saveSymptomsButton.isEnabled = true
            }
        } else {
            UIView.animate(withDuration: 0.2) {
                self.cell4.addDropDownShadow(color: .clear, opacity: 0, offset: .zero, radius: 0)
                self.cell4.backgroundColor = UIColor(named: "CustomGrey")
                
                if let image = self.cell4.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "BreatheGrey")
                }
                
                if let label = self.cell4.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = .black
                }
                
                if !self.arr.contains(true) {
                    self.saveSymptomsButton.isEnabled = false
                    self.saveSymptomsButton.backgroundColor = UIColor(named: "CustomGrey")
                }
            }
        }
    }
    
    @objc
    func selectCell5() {
        self.arr[4].toggle()
        
        if arr[4] {
            UIView.animate(withDuration: 0.2) {
                self.cell5.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
                self.cell5.backgroundColor = UIColor(named: "backgroundColor")
                
                if let image = self.cell5.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "TongueBlue")
                }
                
                if let label = self.cell5.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = UIColor(named: "TextColor")
                }
                
                self.saveSymptomsButton.backgroundColor = UIColor(named: "ButtonColor")
                self.saveSymptomsButton.isEnabled = true
            }
        } else {
            UIView.animate(withDuration: 0.2) {
                self.cell5.addDropDownShadow(color: .clear, opacity: 0, offset: .zero, radius: 0)
                self.cell5.backgroundColor = UIColor(named: "CustomGrey")
                
                if let image = self.cell5.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "TongueGrey")
                }
                
                if let label = self.cell5.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = .black
                }
                
                if !self.arr.contains(true) {
                    self.saveSymptomsButton.isEnabled = false
                    self.saveSymptomsButton.backgroundColor = UIColor(named: "CustomGrey")
                }
            }
        }
    }
    
    @objc
    func selectCell6() {
        self.arr[5].toggle()
        
        if arr[5] {
            UIView.animate(withDuration: 0.2) {
                self.cell6.addDropDownShadow(color: .lightGray, opacity: 0.5, offset: .init(width: 1, height: 6), radius: 8)
                self.cell6.backgroundColor = UIColor(named: "backgroundColor")
                
                if let image = self.cell6.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "LungsBlue")
                }
                
                if let label = self.cell6.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = UIColor(named: "TextColor")
                }
                
                self.saveSymptomsButton.backgroundColor = UIColor(named: "ButtonColor")
                self.saveSymptomsButton.isEnabled = true
            }
        } else {
            UIView.animate(withDuration: 0.2) {
                self.cell6.addDropDownShadow(color: .clear, opacity: 0, offset: .zero, radius: 0)
                self.cell6.backgroundColor = UIColor(named: "CustomGrey")
                
                if let image = self.cell6.viewWithTag(1) {
                    let img = image as! UIImageView
                    img.image = UIImage(named: "LungsGrey")
                }
                
                if let label = self.cell6.viewWithTag(2) {
                    let text = label as! UILabel
                    text.textColor = .black
                }
                
                if !self.arr.contains(true) {
                    self.saveSymptomsButton.isEnabled = false
                    self.saveSymptomsButton.backgroundColor = UIColor(named: "CustomGrey")
                }
            }
        }
    }
    
    @IBAction func saveSymptoms(_ sender: Any) {
        //Saving functionality to be done.
        
        
        if self.saveSymptomsButton.isEnabled {
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "main")
            
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
