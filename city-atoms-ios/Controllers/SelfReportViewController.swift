//
//  ViewController.swift
//  city-atoms-ios
//
//  Created by Ahad Islam on 3/22/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import UIKit

class SelfReportViewController: UIViewController {
    @IBOutlet weak var alertButton: UIButton!
    @IBOutlet weak var submitButton: LButton!
    @IBOutlet weak var questionView: UIView!

    var checksum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func greenButtonPressed(_ sender: UIButton) {
        if sender.backgroundColor == UIColor(named: "offWhite") {
            UIView.animate(withDuration: 0.3) {
                sender.backgroundColor = UIColor(named: "treeGreen")
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                sender.backgroundColor = UIColor(named: "offWhite")
            }
        }
    }

    @IBAction func purpleButtonPressed(_ sender: UIButton) {
        if sender.backgroundColor == UIColor(named: "brightLilac25") {
            UIView.animate(withDuration: 0.3) {
                sender.backgroundColor = UIColor(named: "brightLilac")
                self.questionView.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                sender.backgroundColor = UIColor(named: "brightLilac25")
                self.questionView.isHidden = true
            }
        }
    }

    @IBAction func checkBoxButtonPressed(_ sender: CheckboxButton) {
        if sender.backgroundColor == UIColor(named: "paleGrey") {
            checksum += 1
            UIView.animate(withDuration: 0.3) {
                sender.backgroundColor = UIColor(named: "purpleishBlue")
            }
        } else {
            checksum -= 1
            UIView.animate(withDuration: 0.3) {
                sender.backgroundColor = UIColor(named: "paleGrey")
            }
        }

        submitButton.isHidden = !(checksum > 0)

    }

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        alertButton.isHidden = false
    }

    private func configureButton() {
        alertButton.layer.cornerRadius = alertButton.frame.height / 2
    }
}
