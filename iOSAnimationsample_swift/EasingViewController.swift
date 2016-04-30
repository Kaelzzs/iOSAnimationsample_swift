//
//  EasingViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    
    @IBOutlet weak var yellowSquare: UIView!
    
    @IBOutlet weak var blueSquare: UIView!
    
    @IBOutlet weak var greenSquare: UIView!
    
    @IBOutlet weak var orangeSquare: UIView!
    
    override func viewDidAppear(animated: Bool) {
        self.yellowanimation()
        self.blueAnimation()
        self.greenAnimation()
        self.orangeAnimation()
    }
    
    
//**************************
    
  
    func yellowanimation() -> Void {
        UIView.animateWithDuration(1.0, delay: 0, options:[.CurveLinear,.Repeat,.Autoreverse] , animations: {
            self.yellowSquare.center.x = self.view.bounds.size.width - self.yellowSquare.center.x
            }, completion: nil)
    }
    
    func blueAnimation() -> Void {
        UIView.animateWithDuration(1.0, delay: 0, options:[.CurveEaseIn,.Repeat,.Autoreverse] , animations: {
            self.blueSquare.center.x = self.view.bounds.size.width - self.blueSquare.center.x
            }, completion: nil)
    }
    
    
    func greenAnimation() -> Void {
        UIView.animateWithDuration(1.0, delay: 0, options:[.CurveEaseOut,.Repeat,.Autoreverse] , animations: {
            self.greenSquare.center.x = self.view.bounds.size.width - self.greenSquare.center.x
            }, completion: nil)
    }
    
    
    func orangeAnimation() -> Void {
        UIView.animateWithDuration(1.0, delay: 0, options:[.CurveEaseInOut,.Repeat,.Autoreverse] , animations: {
            self.orangeSquare.center.x = self.view.bounds.size.width - self.orangeSquare.center.x
            }, completion: nil)
    }
    
    
    
    
    
    
    
//**************************
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
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
