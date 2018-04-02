//
//  AppDetailController.swift
//  Start Project - Rebuild AppStore Card Animation
//
//  Created by 李博韬 on 02/04/2018.
//  Copyright © 2018 李博韬. All rights reserved.
//

import UIKit

class AppDetailController: UIViewController {
    
    let cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(white: 0.7, alpha: 0.7)
        button.layer.cornerRadius = 14
        return button
    }()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "flBackground")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.isUserInteractionEnabled = true
        return image
    }()
    
    let icon: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "flappy")
        image.layer.cornerRadius = 25
        image.backgroundColor = .red
        return image
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 14
        button.backgroundColor = UIColor(white: 1, alpha: 0.8)
        return button
    }()
    
    var shouldHide = true
    
    override var prefersStatusBarHidden: Bool {
        return shouldHide
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    
    fileprivate func setupViews() {
        
        view.backgroundColor = .white
        
        view.addSubview(image)
        image.addSubview(cancelButton)
        image.addSubview(icon)
        image.addSubview(getButton)


        image.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 550)

        cancelButton.anchor(top: image.topAnchor, left: nil, bottom: nil, right: image.rightAnchor, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 14, width: 28, height: 28)
        cancelButton.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        
        icon.anchor(top: image.topAnchor, left: image.leftAnchor, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 14, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        
        getButton.anchor(top: nil, left: nil, bottom: image.bottomAnchor, right: image.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 20, paddingRight: 14, width: 80, height: 28)

    }
    
    @objc fileprivate func handleCancel() {
        self.dismiss(animated: true, completion: nil)
    }
}

