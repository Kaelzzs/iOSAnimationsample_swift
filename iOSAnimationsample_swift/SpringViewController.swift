//
//  SpringViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    
    @IBOutlet weak var yellowSquare: UIView!
    
    @IBOutlet weak var blueSquare: UIView!
    
    @IBOutlet weak var orangeSquare: UIView!
    
    func yellowAnimation() -> Void {
/*
         usingSpringWithDamping:阻力
         initialSpringVelocity：初始速度
         Duration:duration太小 动画有可能会被取消
         
         
         
         */
    UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: .CurveLinear, animations: {
        self.yellowSquare.center.x = self.view.bounds.size.width - self.yellowSquare.center.x

        }, completion: nil)
    
    }
    
    func blueAnimation() -> Void {
        
        UIView.animateWithDuration(3, delay: 3, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .CurveLinear, animations: {
            self.blueSquare.center.x = self.view.bounds.size.width - self.blueSquare.center.x
            
            }, completion: nil)
        
    }

    
    func orangeAnimation() -> Void {
        
        UIView.animateWithDuration(3, delay: 6, usingSpringWithDamping: 0.4, initialSpringVelocity: 5, options: .CurveLinear, animations: {
            self.orangeSquare.center.x = self.view.bounds.size.width - self.orangeSquare.center.x
            
            }, completion: nil)
        
    }
    
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        self.yellowAnimation()
        self.blueAnimation()
        self.orangeAnimation()
        
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
