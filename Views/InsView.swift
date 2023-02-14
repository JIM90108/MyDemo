//
//  InsView.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/3.
//

import UIKit

class InsView: UIView {
    
    
    let productLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    
    let productButton: UIButton = {
       let btn = UIButton()
        btn.setImage(UIImage(named: "button-addtocart"), for: .normal)
        return btn
    }()
    
    let productImage: UIImageView = {
        let images = UIImageView()
        images.image = UIImage(named: "phone-fullscreen1")
        return images
    }()
    func setViews(){
        self.addSubview(productImage)
        productImage.addSubview(productLabel)
        productImage.addSubview(productButton)
    }
    
    func setLayouts(){
        productLabel.translatesAutoresizingMaskIntoConstraints = false
        productLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 100).isActive = true
        productLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        productButton.translatesAutoresizingMaskIntoConstraints = false
        productButton.topAnchor.constraint(equalTo: productLabel.bottomAnchor,constant: 30).isActive = true
        productButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        productButton.centerXAnchor.constraint(equalTo: productLabel.centerXAnchor).isActive = true
        
        
        productImage.translatesAutoresizingMaskIntoConstraints = false
        productImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        productImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        productImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        productImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
       
    }

}
