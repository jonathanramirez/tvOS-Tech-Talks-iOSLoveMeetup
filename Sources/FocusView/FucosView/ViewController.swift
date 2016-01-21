//
//  ViewController.swift
//  FucosView
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    
        let button = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 100, 100, 50)
        button.setTitle("Button 1", forState: UIControlState.Normal)
        button.sizeToFit()
        self.view.addSubview(button)

        let aView = CustomFocusView(frame: CGRectMake(100,240,200,100));
        aView.backgroundColor = UIColor.redColor()
        self.view.addSubview(aView)
        
        let button2 = UIButton(type: UIButtonType.System) as UIButton
        button2.frame = CGRectMake(100, 400, 100, 50)
        button2.setTitle("Button 2", forState: UIControlState.Normal)
        button2.sizeToFit()
        self.view.addSubview(button2)
        

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

