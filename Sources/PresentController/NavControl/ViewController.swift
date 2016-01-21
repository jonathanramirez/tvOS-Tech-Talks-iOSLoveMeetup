//
//  ViewController.swift
//  NavControl
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    
        let button = UIButton(type: UIButtonType.System)
        button.frame = CGRectMake(100, 100, 100, 100)
        button.setTitle("show red", forState: UIControlState.Normal)
        button.addTarget(self, action: "showRed:", forControlEvents: UIControlEvents.PrimaryActionTriggered)
        button.sizeToFit()
        self.view.addSubview(button)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func showRed(sender:AnyObject) {
        
        
        let redView = redControllerViewController()
        self.presentViewController(redView, animated: true) { () -> Void in
            
        }
    }
    
    
    
    


}

