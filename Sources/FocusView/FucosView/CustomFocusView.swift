//
//  CustomFocusView.swift
//  FucosView
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class CustomFocusView: UIView {

    override func canBecomeFocused() -> Bool {
         return true
    }

    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {

        if context.previouslyFocusedView === self  {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
        }
        
        if context.nextFocusedView === self {
        
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransformMakeScale(1.2, 1.2)
            })
        
        }

        
        
    }
    
    
}
