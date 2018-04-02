//
//  CustomCell.swift
//  Start Project - Rebuild AppStore Card Animation
//
//  Created by 李博韬 on 02/04/2018.
//  Copyright © 2018 李博韬. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    
    let cardView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 14
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.backgroundColor = .white
        view.layer.shadowRadius = 10
        return view
    }()
    
    let container: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 14
        return view
    }()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "flBackground")
        image.layer.cornerRadius = 14
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        
    }
    
    fileprivate func setupViews() {
        
        addSubview(container)
        addSubview(cardView)
        addSubview(image)
        addSubview(icon)
        addSubview(getButton)
        
        cardView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        image.anchor(top: cardView.topAnchor, left: cardView.leftAnchor, bottom: cardView.bottomAnchor, right: cardView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        icon.anchor(top: image.topAnchor, left: image.leftAnchor, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 14, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        
        getButton.anchor(top: nil, left: nil, bottom: image.bottomAnchor, right: image.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 20, paddingRight: 14, width: 80, height: 28)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


