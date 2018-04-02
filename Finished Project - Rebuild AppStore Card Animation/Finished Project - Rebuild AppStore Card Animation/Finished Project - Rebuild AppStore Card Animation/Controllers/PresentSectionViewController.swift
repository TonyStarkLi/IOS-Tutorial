//
//  PresentSectionViewController.swift
//  Finished Project - Rebuild AppStore Card Animation
//
//  Created by 李博韬 on 02/04/2018.
//  Copyright © 2018 李博韬. All rights reserved.
//

import UIKit

class PresentSectionViewController: NSObject, UIViewControllerAnimatedTransitioning {
    
    var cellFrame: CGRect!
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.6
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        // 1
        let toVC = transitionContext.viewController(forKey: .to) as! AppDetailController
        let containerView = transitionContext.containerView
        let bounds = UIScreen.main.bounds
        
        // 2
        containerView.addSubview(toVC.view)
        
        print(cellFrame)
        
        // 3
        toVC.image.layer.cornerRadius = 14
        toVC.imageHeightConstraint.constant = 460
        toVC.viewTopConstraint.constant = cellFrame.origin.y - 20
        toVC.viewLeftConstraint.constant = cellFrame.origin.x
        toVC.viewRightConstraint.constant = -(bounds.width - cellFrame.origin.x - cellFrame.width)
        toVC.viewBottomConstraint.constant = -(bounds.height - cellFrame.origin.y - cellFrame.height)
        toVC.view.layoutIfNeeded()
        
        // 4
        let animator = UIViewPropertyAnimator(duration: 0.6, dampingRatio: 0.7) {
            toVC.viewTopConstraint.constant = 0
            toVC.viewLeftConstraint.constant = 0
            toVC.viewRightConstraint.constant = 0
            toVC.viewBottomConstraint.constant = 0
            toVC.image.layer.cornerRadius = 0
            toVC.imageHeightConstraint.constant = 550
            toVC.view.layoutIfNeeded()
        }
        
        animator.startAnimation()
        
        // 5
        animator.addCompletion { (finished) in
            transitionContext.completeTransition(true)
        }
    }
    
}
