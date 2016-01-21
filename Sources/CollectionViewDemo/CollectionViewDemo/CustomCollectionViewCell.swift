//
//  CustomCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
   
    
    var imageView = UIImageView(frame: CGRectMake(40, 40, 184, 243))

    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.adjustsImageWhenAncestorFocused = true
        imageView.backgroundColor = UIColor.lightGrayColor()
        self.contentView.addSubview(imageView);
        
    }


//    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
//
//        coordinator.addCoordinatedAnimations({ [unowned self] in
//            if self.focused {
//                self.imageView.transform = CGAffineTransformMakeScale(1.2, 1.2)
//
//            }
//            else {
//                self.imageView.transform = CGAffineTransformMakeScale(1.0, 1.0)
//
//            }
//            }, completion: nil)
//    }
    
    


}
