//
//  OpacityViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var opacityView: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(1) { 
        
            self.opacityView.alpha = 0.3;
            
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
