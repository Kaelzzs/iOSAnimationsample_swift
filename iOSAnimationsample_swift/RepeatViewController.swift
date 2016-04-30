//
//  RepeatViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    
    @IBOutlet weak var greenSquare: UIView!
    
    @IBOutlet weak var orangeSquare: UIView!
    
    @IBOutlet weak var yellowSquare: UIView!
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        
        
        
        self.greenAnimation()
        self.orangeAnimation()
        self.yellowAnimation()
        
    }
    
    func greenAnimation() -> Void {
        
        UIView.animateWithDuration(1.5) {
            self.greenSquare.center.x = self.view.bounds.width-self.greenSquare.center.x
        }
    }
    
    func orangeAnimation() -> Void {
        
        UIView.animateWithDuration(1.0, delay: 0, options: .Repeat, animations: {
            self.orangeSquare.center.x = self.view.bounds.size.width-self.orangeSquare.center.x;

            }, completion: nil)
        
    }
    
    func yellowAnimation() -> Void {
        

        UIView.animateWithDuration(1, delay: 0, options:[.Repeat , .Autoreverse], animations: {
            self.yellowSquare.center.x = self.view.bounds.size.width-self.yellowSquare.center.x;

            }, completion: nil)
        
        
    }
    
    
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
