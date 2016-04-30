//
//  RotationViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidAppear(animated: Bool) {
        
//        self.apin()//中间有停歇
        self.transFuntion()//流畅  不间断的转动
        
        
    }
    
    
    func apin() -> Void {

        
        UIView.animateWithDuration(1.5, animations: {
            self.redView.transform  = CGAffineTransformRotate(self.redView.transform, CGFloat(M_PI))
            
            }) { (finished ) in
            
                self.apin()
        }
    }
    func transFuntion() -> Void {
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: {
            self.redView.transform  = CGAffineTransformRotate(self.redView.transform, CGFloat(M_PI))

            }) { (finished) in
                self.transFuntion()
        }
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
