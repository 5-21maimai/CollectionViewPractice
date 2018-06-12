//
//  CollectionViewCell.swift
//  CollectionSample
//
//  Created by 松居 麻衣 on 2018/06/10.
//  Copyright © 2018年 松居 麻衣. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel = UILabel(frame: CGRect(x:0, y:0, width:frame.width, height:frame.height))
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.numberOfLines = 0
        
        self.addSubview(titleLabel)
        
        self.backgroundColor = UIColor.cyan
        
        let cellSelectedBgView = UIView()
        cellSelectedBgView.backgroundColor = UIColor.orange
        self.selectedBackgroundView = cellSelectedBgView
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
