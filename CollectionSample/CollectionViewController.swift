//
//  ViewController.swift
//  CollectionSample
//
//  Created by 松居 麻衣 on 2018/06/04.
//  Copyright © 2018年 松居 麻衣. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UIGestureRecognizerDelegate {
    var collectionView : UICollectionView!
    let cellMargin: CGFloat = 3.0
    private var presenter: CollectionViewPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        presenter = CollectionViewPresenter(view: self)
        
        let layout = UICollectionViewFlowLayout()
        layout.headerReferenceSize = CGSize(width:100,height:50)
        layout.footerReferenceSize = CGSize(width:100,height:50)
        
        // レイアウト
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderSection")
//        collectionView.register(FooterView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "FooterSection")
        collectionView.backgroundColor = UIColor.white
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.allowsMultipleSelection = true
        
        self.view.addSubview(collectionView)
        
        self.setKodawariData()
    }
    
    func setKodawariData() {
        presenter.updateKodawari()
    }

}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return presenter.numberOfCategories
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.items(section: section).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell",
                                                      for: indexPath as IndexPath) as! CollectionViewCell
        
        cell.titleLabel.text = presenter.item(indexPath: indexPath)
        return cell
    }
    
    // ヘッダー設定
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader,
                                                                         withReuseIdentifier: "HeaderSection",
                                                                         for: indexPath)
        headerView.backgroundColor = UIColor.lightGray
        return headerView
    }
    
    //セルのサイズを設定
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (collectionView.frame.size.width - cellMargin * 4) / 3
        let height: CGFloat = width * 0.5
        return CGSize(width: width, height: height)
        
    }
    
    //セルの垂直方向のマージンを設定
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cellMargin
    }
    
    //セルの水平方向のマージンを設定
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellMargin
    }

    
}

