//
//  ColorViewController.swift
//  iOSAnimationsample_swift
//
//  Created by Kael on 16/4/30.
//  Copyright © 2016年 创维海通. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.5) { 
            self.redView.backgroundColor = UIColor.blueColor()
            self.textLabel.textColor = UIColor.whiteColor()
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
