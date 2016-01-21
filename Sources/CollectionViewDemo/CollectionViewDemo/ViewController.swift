//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Jonathan Ramirez on 1/15/16.
//  Copyright © 2016 HeadWorkGames.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let collectionView = CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.view.frame = self.view.frame;
        self.addChildViewController(collectionView)
        self.collectionView.didMoveToParentViewController(self)
        self.view.addSubview(collectionView.view);

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

