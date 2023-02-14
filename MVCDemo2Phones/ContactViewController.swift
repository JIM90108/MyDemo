//
//  ContactViewController.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/1.
//

import UIKit

class ContactViewController: UIViewController {
    
    let contactV = ContactView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    
      
    }
    
    override func loadView() {
        self.view = contactV
        contactV.setViews()
        contactV.setLaout()
    }
   

}
