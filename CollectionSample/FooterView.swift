//
//  FooterView.swift
//  CollectionSample
//
//  Created by 松居 麻衣 on 2018/06/04.
//  Copyright © 2018年 松居 麻衣. All rights reserved.
//

import UIKit

class FooterView: UICollectionReusableView {
    var footerLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        footerLabel = UILabel(frame: CGRect(x:0, y:0, width:frame.width, height:frame.height))
        footerLabel?.text = "もっと見る"
        footerLabel?.backgroundColor = UIColor.white
        footerLabel?.textAlignment = NSTextAlignment.center
        
        self.addSubview(footerLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
