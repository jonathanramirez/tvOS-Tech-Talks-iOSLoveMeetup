//
//  ViewController.swift
//  Text
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textField = UITextField(frame: CGRectMake(100,100,500, 100))
    let label = UILabel(frame: CGRectMake(100,200,500, 100))
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.placeholder = "Enter Text"
        textField.addTarget(self, action: "textChanged:", forControlEvents: UIControlEvents.EditingChanged)
        self.view .addSubview(textField)

        label.text = "label"
        label.font = UIFont.boldSystemFontOfSize(40)
        self.view.addSubview(label)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textChanged(textField:UITextField)
    {
        label.text = textField.text;
    }

}

