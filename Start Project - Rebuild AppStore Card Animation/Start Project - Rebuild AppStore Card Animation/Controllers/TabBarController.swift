//
//  TabBarController.swift
//  Start Project - Rebuild AppStore Card Animation
//
//  Created by 李博韬 on 02/04/2018.
//  Copyright © 2018 李博韬. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let mainController = ViewController(collectionViewLayout: layout)
        
        viewControllers = [mainController]
    }
    
}
