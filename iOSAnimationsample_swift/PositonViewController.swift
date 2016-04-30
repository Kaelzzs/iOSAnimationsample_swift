//
//  PositonViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class PositonViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var greenSquare: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        //*******************

        UIView.animateWithDuration(1) {
            self.blueSquare.center.x = self.view.bounds.size.width-self.blueSquare.center.x;
//            self.redSquare.center.y = self.view.bounds.size.height-self.redSquare.center.y;
//
//            self.greenSquare.center.x = self.view.bounds.size.width-self.greenSquare.center.x;
//            self.greenSquare.center.y = self.view.bounds.size.height-self.greenSquare.center.y;

        
        }
        
        UIView.animateWithDuration(1, delay:1, usingSpringWithDamping: 5, initialSpringVelocity: 10, options: .BeginFromCurrentState, animations: {
             self.redSquare.center.y = self.view.bounds.size.height-self.redSquare.center.y;
            }, completion: nil)
        
       
        UIView.animateWithDuration(1, delay: 1.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .AllowUserInteraction, animations: {
            self.greenSquare.center.x = self.view.bounds.size.width-self.greenSquare.center.x;
            self.greenSquare.center.y = self.view.bounds.size.height-self.greenSquare.center.y;
            }, completion: nil)
        //*******************

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
