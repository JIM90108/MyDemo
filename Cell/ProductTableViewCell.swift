//
//  ProductTableViewCell.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/1.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    static let identifier = "ProductTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setCellViews()
        setCellLaouts()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var productImage: UIImageView = {
        let images = UIImageView()
        return images
    }()
    
    var Productlabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    func setCellViews(){
        self.backgroundColor = .clear
        self.contentView.addSubview(productImage)
        self.contentView.addSubview(Productlabel)
    }
    
    
    func setCellLaouts(){
        productImage.translatesAutoresizingMaskIntoConstraints = false
        productImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        productImage.widthAnchor.constraint(equalToConstant: 90).isActive = true
        productImage.heightAnchor.constraint(equalToConstant: 90).isActive = true
        Productlabel.translatesAutoresizingMaskIntoConstraints = false
        Productlabel.leftAnchor.constraint(equalTo: productImage.rightAnchor,constant: 15).isActive = true
        Productlabel.centerYAnchor.constraint(equalTo: productImage.centerYAnchor).isActive = true
       
       
    }
    

}
