//
//  OnboardingProcess.swift
//  Juicechef
//
//  Created by Kareem Dasilva on 5/11/16.
//  Copyright © 2016 Juice chef. All rights reserved.
//

import UIKit
import Onboard
var k = 0

class OnboardingProcess: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       
   
    
    }
    override func viewDidAppear(animated: Bool) {
        let onboardingCheck = NSUserDefaults.standardUserDefaults()
        let check = onboardingCheck.boolForKey("onboarding")
        if check == false {
            let firstPage = OnboardingContentViewController(title: "Page Title", body: "Page body goes here.", image: nil, buttonText: "Text For Button") { () -> Void in
                // do something here when users press the button, like ask for location services permissions, register for push notifications, connect to social media, or finish the onboarding process
            }
            let secondPage = OnboardingContentViewController(title: "Page Title", body: "Page body goes here.", image: nil, buttonText: "Text For Button") { () -> Void in
                // do something here when users press the button, like ask for location services permissions, register for push notifications, connect to social media, or finish the onboarding process
            }
            let thirdPage = OnboardingContentViewController(title: "Page Title", body: "Page body goes here.", image: nil, buttonText: "Power") { () -> Void in
                self.dismissViewControllerAnimated(true, completion: {
                    Void in
                    
                    self.performSegueWithIdentifier("home", sender: self)
                    print("LOL")
                })
                
            }
            
            let onboard = OnboardingViewController(backgroundImage: nil, contents: [firstPage, secondPage, thirdPage])
            self.presentViewController(onboard, animated: true, completion: {
                Void in
                print("Hey")
                let completion = NSUserDefaults.standardUserDefaults()
                completion.setValue(true, forKey: "onboarding")
                
            })

        } else {
            self.performSegueWithIdentifier("home", sender: self)

        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
