//
//  ViewController.swift
//  RoundUp
//
//  Created by Javier Banda on 2/24/18.
//  Copyright © 2018 Javier Banda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login_pressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "successful_log_in", sender: self)
    }
    
}

