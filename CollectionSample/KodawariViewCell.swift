//
//  KodawariViewCell.swift
//  CollectionSample
//
//  Created by 松居 麻衣 on 2018/06/13.
//  Copyright © 2018年 松居 麻衣. All rights reserved.
//

import UIKit

class KodawariViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.cyan
        
        let cellSelectedBgView = UIView()
        cellSelectedBgView.backgroundColor = UIColor.orange
        self.selectedBackgroundView = cellSelectedBgView
    }

}
