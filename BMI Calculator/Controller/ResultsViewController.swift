//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Mr. Puneet on 4/19/21.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!

    @IBOutlet var backgroundColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        backgroundColor.backgroundColor = color

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
