//
//  ViewController.swift
//  Start Project - Rebuild AppStore Card Animation
//
//  Created by 李博韬 on 02/04/2018.
//  Copyright © 2018 李博韬. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    private let cellId = "cellId"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    
    // MARK: - UICollectionView
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CustomCell
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = AppDetailController()
        self.present(controller, animated: true, completion: nil)
    }
    
}

// MARK: - DELEGATE
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 28, height: 460)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 44 + 8 + 14 + 14 + 14)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(30)
    }
    
}


