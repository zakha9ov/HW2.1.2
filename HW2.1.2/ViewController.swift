//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Mikhail Zakharov on 20.08.2020.
//  Copyright © 2020 Mikhail Zakharov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.height / 2
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = greenView.frame.height / 2
        greenView.alpha = 0.3
        
        switchButton.layer.cornerRadius = 10
    }

    @IBAction func switchButtonPressed() {
        if redView.alpha == 0.30000001192092896 && yellowView.alpha == 0.30000001192092896 && greenView.alpha == 0.30000001192092896 {
            redView.alpha = 1
            switchButton.setTitle("Next", for: .normal)
        } else if redView.alpha == 1 && yellowView.alpha == 0.30000001192092896 && greenView.alpha == 0.30000001192092896 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 && redView.alpha == 0.30000001192092896 && greenView.alpha == 0.30000001192092896 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
        
        
    }
    
}



