//
//  KodawariModel.swift
//  CollectionSample
//
//  Created by 松居 麻衣 on 2018/06/10.
//  Copyright © 2018年 松居 麻衣. All rights reserved.
//

import Foundation

class KodawariModel {
    var kodawaris: [[String]] = []
    
    
    func loadKodawari() {
        let filePath = Bundle.main.path(forResource: "Kodawari", ofType:"plist" )
        if let kodawariCategory = NSArray(contentsOfFile: filePath!) {
            for category in kodawariCategory {
                if let kodawariArray = category as? [String] {
                    self.kodawaris.append(kodawariArray)
                }
            }
        }
    }
    
    
    func numberOfCategories() -> Int {
        return kodawaris.count
    }
    
    func items(section: Int) -> [String] {
        return kodawaris[section]
    }
    
    
}
