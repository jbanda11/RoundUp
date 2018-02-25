//
//  user_profile.swift
//  RoundUp
//
//  Created by Javier Banda on 2/24/18.
//  Copyright © 2018 Javier Banda. All rights reserved.
//

import UIKit

class user_profile: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebook_click(_ sender: UIButton) {
        let facebookHooks = "https://www.facebook.com/javier.banda.165"
        let facebookUrl = NSURL(string: facebookHooks)
        if UIApplication.shared.canOpenURL(facebookUrl! as URL) {
            UIApplication.shared.open(facebookUrl! as URL, options: [:], completionHandler: nil)
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.open(NSURL(string: "http://facebook.com/")! as URL)
        }
    }
    
    @IBAction func twitter_click(_ sender: UIButton) {
        let twitterHooks = "https://www.twitter.com//"
        let twitterUrl = NSURL(string: twitterHooks)
        if UIApplication.shared.canOpenURL(twitterUrl! as URL) {
            UIApplication.shared.open(twitterUrl! as URL, options: [:], completionHandler: nil)
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.open(NSURL(string: "http://twitter.com/")! as URL)
        }
    }
    
    @IBAction func instagram_click(_ sender: UIButton) {
        let instagramHooks = "https://www.instagram.com/jbanda11/"
        let instagramUrl = NSURL(string: instagramHooks)
        if UIApplication.shared.canOpenURL(instagramUrl! as URL) {
            UIApplication.shared.open(instagramUrl! as URL, options: [:], completionHandler: nil)
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.open(NSURL(string: "http://instagram.com/")! as URL)
        }
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
