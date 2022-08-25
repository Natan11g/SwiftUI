//
//  ViewController.swift
//  natCalculator
//
//  Created by Natan Gluszko on 18/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        var number = sender.titleLabel!.text!
        print(sender.titleLabel?.text!)
        displayLabel.text! += number
        
        
    }
    
}

