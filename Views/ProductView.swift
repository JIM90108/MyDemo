//
//  ProductTableView.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/1.
//

import UIKit

class ProductView: UIView {
    
     let tableView: UITableView = {
        let tbv = UITableView()
        tbv.backgroundColor = .white
        tbv.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.identifier)
        return tbv
    }()
    

    
    func setViews(){
        self.addSubview(tableView)
    }
    
    func setLayouts(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }

}
