//
//  redControllerViewController.swift
//  NavControl
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class redControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.redColor()
    
        
        
        let button = UIButton(type: UIButtonType.System)
        button.frame = CGRectMake(100, 100, 100, 100)
        button.setTitle("show green", forState: UIControlState.Normal)
        button.addTarget(self, action: "showGreen:", forControlEvents: UIControlEvents.PrimaryActionTriggered)
        
        button.sizeToFit()
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func showGreen(sender:AnyObject) {
        

        let green  = greenViewController()
        self.presentViewController(green, animated: true, completion: nil)
    }
    
    
    
    
}
