//
//  ViewController.swift
//  buttons
//
//  Created by Jonathan Ramirez on 1/14/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redButton   = UIButton(type: UIButtonType.System) as UIButton
        redButton.frame = CGRectMake(100, 100, 100, 50)
        redButton.setTitle("Red", forState: UIControlState.Normal)
        redButton.backgroundColor = UIColor.greenColor()
        redButton.addTarget(self, action: "redButtonAction:", forControlEvents: UIControlEvents.PrimaryActionTriggered)
        redButton.sizeToFit()
        self.view.addSubview(redButton)
        
        
        let greenButton   = UIButton(type: UIButtonType.System) as UIButton
        greenButton.frame = CGRectMake(100, 200, 100, 50)
        greenButton.backgroundColor = UIColor.greenColor()
        greenButton.setTitle("Green", forState: UIControlState.Normal)
        greenButton.addTarget(self, action: "greenButtonAction:", forControlEvents: UIControlEvents.PrimaryActionTriggered)
        greenButton.sizeToFit()
        self.view.addSubview(greenButton)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func redButtonAction(sender: AnyObject) {
        
        print("red");
        
    }

    
    func greenButtonAction(sender: AnyObject) {
        
        print("green");
        
    }

}

