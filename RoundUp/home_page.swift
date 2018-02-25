//
//  home_page.swift
//  RoundUp
//
//  Created by Javier Banda on 2/24/18.
//  Copyright © 2018 Javier Banda. All rights reserved.
//

import UIKit

class home_page: UIViewController {

    @IBOutlet weak var user_button: UIButton!
    
    let num_circle_members = 5
    let x = 140
    let y = 292
    let d = 300
    let r = 150
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        user_button.layer.cornerRadius = 0.5 * user_button.bounds.size.width
        user_button.clipsToBounds = true
        
        let slice = 2 * Double.pi / Double(num_circle_members)
        for i in 0...(num_circle_members - 2){
            let angle = slice * Double(i)
            let newX = Int(Double(x) + Double(r) * cos(angle))
            let newY = Int(Double(y) + Double(r) * sin(angle))
            createCircle(current_x: newX, current_y: newY)
        }
        view.bringSubview(toFront: user_button)
    }

    func createCircle(current_x: Int, current_y: Int){
        let user_button = UIButton(type: .custom)
        user_button.frame = CGRect(x: current_x, y: current_y, width: 80, height: 80)
        user_button.layer.cornerRadius = 0.5 * user_button.bounds.size.width
        user_button.clipsToBounds = true
        user_button.setImage(UIImage(named:"friend_image.png"), for: .normal)
        view.addSubview(user_button)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
