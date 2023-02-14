//
//  ProductModel.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/1.
//

import Foundation

class Product {
    var name: String?
    var cellImageName: String?
    var fullscreenImageName: String?
    
    init(name:String,cellImageName:String,cellfullscreenImageName: String){
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName  = cellfullscreenImageName
    }
}
