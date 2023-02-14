//
//  ProductInsViewController.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/3.
//

import UIKit

class ProductInsViewController: UIViewController {
    
    let InsViews = InsView()
    var products: Product?
    var productName:String = ""
    var productFullImageName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        InsViews.productLabel.text = productName
        InsViews.productImage.image = UIImage(named: productFullImageName)
        
    }
    
    
    override func loadView() {
        self.view = InsViews
        InsViews.setViews()
        InsViews.setLayouts()
    }

}
