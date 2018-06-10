//
//  CoolectionViewPresenter.swift
//  CollectionSample
//
//  Created by 松居 麻衣 on 2018/06/10.
//  Copyright © 2018年 松居 麻衣. All rights reserved.
//

import Foundation

class CollectionViewPresenter {
    private let view: CollectionViewController
    private let model: KodawariModel
    var numberOfCategories: Int {
        return model.numberOfCategories()
    }
    
    required init(view: CollectionViewController) {
        self.view = view
        self.model = KodawariModel()
    }
    
    func updateKodawari() {
        model.loadKodawari()
    }
    
    func items(section: Int) -> [String] {
        return model.items(section:section)
    }
    
    func item(indexPath: IndexPath) -> String {
        return items(section: indexPath.section)[indexPath.row]
    }
    
}
