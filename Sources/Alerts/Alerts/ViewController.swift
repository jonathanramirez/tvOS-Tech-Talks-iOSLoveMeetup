//
//  ViewController.swift
//  Alerts
//
//  Created by Jonathan Ramirez on 1/13/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func alert1(sender: AnyObject) {
        let title = "Simple Alert"
        let message = "Message"
        
        let buttonTitle = "OK"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let doneAction = UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.Default) { _ in
            print("OK was pressed")
        }
        
        alert.addAction(doneAction)
        
        presentViewController(alert, animated: true, completion: nil)

    }
    @IBAction func alert2(sender: AnyObject) {
        let title = "Simple Alert"
        let message = "Message"
        
        let buttonTitle = "OK"
        let buttonRetry = "Retry"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let doneAction = UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.Default) { _ in
            print("OK was pressed")
        }
        
        alert.addAction(doneAction)
        
        let retryAction = UIAlertAction(title: buttonRetry, style: UIAlertActionStyle.Cancel) { _ in
            print("Retry was pressed")
        }
        
        alert.addAction(retryAction)
        
        presentViewController(alert, animated: true, completion: nil)

    }

    @IBAction func alert3(sender: AnyObject) {
        
        let title = "Simple Alert"
        let message = "Message OK CANCEL"
        
        let buttonTitle = "OK"
        let buttonRetry = "Cancel"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let doneAction = UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.Default) { _ in
            print("OK was pressed")
        }
        
        alert.addAction(doneAction)
        
        let retryAction = UIAlertAction(title: buttonRetry, style: UIAlertActionStyle.Destructive) { _ in
            print("Cancel was pressed")
        }
        
        alert.addAction(retryAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
}

