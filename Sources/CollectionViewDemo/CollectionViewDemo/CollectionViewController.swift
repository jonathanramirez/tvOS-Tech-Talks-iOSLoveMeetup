//
//  CollectionViewController.swift
//  CollectionViewDemo
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    
    
    let defaultSize = CGSizeMake(184, 243)
    let focusSize = CGSizeMake(202, 267)
    
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView?.dataSource = self
        self.collectionView?.delegate = self

        
        // Register cell classes
        self.collectionView!.registerClass(CustomCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 30
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CustomCollectionViewCell
    

        if indexPath.row%2 == 0 {
            cell.imageView.image = UIImage(imageLiteral: "poster-1")
        }else {
            cell.imageView.image = UIImage(imageLiteral: "poster-2")
        }
        
        
        
        
        return cell
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(280, 320);
    }
    

    
//    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
//        if let prev = context.previouslyFocusedView as? CustomCollectionViewCell  {
//            UIView.animateWithDuration(0.1, animations: { () -> Void in
//                prev.imageView.frame.size = self.defaultSize
//            })
//        }
//        
//        if let next = context.nextFocusedView as? CustomCollectionViewCell  {
//            UIView.animateWithDuration(0.1, animations: { () -> Void in
//                next.imageView.frame.size = self.focusSize
//            })
//        }
//
//        
//    }
    
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
