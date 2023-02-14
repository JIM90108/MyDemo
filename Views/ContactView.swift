//
//  ContactView.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/4.
//

import UIKit

class ContactView: UIView {
    

    lazy var scrollView: UIScrollView = {
       let scView = UIScrollView()
        scView.backgroundColor = .white
        scView.contentSize = CGSize(width: 0, height: 1000)
        return scView
    }()
    
    let titleImage: UIImageView = {
       let images = UIImageView()
        images.image = UIImage(named: "header-contact")
        return images
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "About US"
        label.textColor = .black
        label.font = .systemFont(ofSize: 25)
        return label
    }()
    
    let titleInsLabel: UILabel = {
       let label = UILabel()
        label.text = "Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:"
        label.numberOfLines = 5
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    let titleInsLabel2: UILabel = {
       let label = UILabel()
        label.text = "Whether you are looking for a turn-of-the-century wall set or a Zack Morris Special, we've got you covered. Give us a ring, and we will get you connected."
        label.numberOfLines = 5
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    let titleLabel2: UILabel = {
       let label = UILabel()
        label.text = "Contact"
        label.textColor = .black
        label.font = .systemFont(ofSize: 25)
        return label
    }()
    
    let emailImage: UIImageView = {
       let images = UIImageView()
        images.image = UIImage(named: "icon-about-email")
        return images
    }()
    
    let phoneImage: UIImageView = {
       let images = UIImageView()
        images.image = UIImage(named: "icon-about-phone")
        return images
    }()
    
    let webImage: UIImageView = {
       let images = UIImageView()
        images.image = UIImage(named: "icon-about-website")
        return images
    }()
    
    let emailLabel: UILabel = {
       let label = UILabel()
        label.text = "good-as-old@example.com"
        label.textColor = .black
        return label
    }()
    
    let phoneLabel: UILabel = {
       let label = UILabel()
        label.text = "412-888-9028"
        label.textColor = .black
        return label
    }()
    
    let webLabel: UILabel = {
       let label = UILabel()
        label.text = "www.example.com"
        label.textColor = .black
        return label
    }()
    
    
    
    
    func setViews(){
        self.addSubview(scrollView)
        scrollView.addSubview(titleImage)
        scrollView.addSubview(titleLabel)
        scrollView.addSubview(titleInsLabel)
        scrollView.addSubview(titleLabel2)
        scrollView.addSubview(titleInsLabel2)
        scrollView.addSubview(emailImage)
        scrollView.addSubview(emailLabel)
        scrollView.addSubview(phoneImage)
        scrollView.addSubview(phoneLabel)
        scrollView.addSubview(webImage)
        scrollView.addSubview(webLabel)
    }
    func setLaout(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        titleImage.topAnchor.constraint(equalTo: scrollView.topAnchor,constant: 20).isActive = true
        titleImage.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        titleImage.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: titleImage.bottomAnchor,constant: 50).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: titleImage.centerXAnchor).isActive = true
        
        titleInsLabel.translatesAutoresizingMaskIntoConstraints = false
        titleInsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 40).isActive = true
        titleInsLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
        titleInsLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        titleInsLabel2.translatesAutoresizingMaskIntoConstraints = false
        titleInsLabel2.topAnchor.constraint(equalTo: titleInsLabel.bottomAnchor,constant: 40).isActive = true
        titleInsLabel2.centerXAnchor.constraint(equalTo: titleInsLabel.centerXAnchor).isActive = true
        titleInsLabel2.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false
        titleLabel2.topAnchor.constraint(equalTo: titleInsLabel2.bottomAnchor,constant: 40).isActive = true
        titleLabel2.centerXAnchor.constraint(equalTo: titleInsLabel2.centerXAnchor).isActive = true
        
        emailImage.translatesAutoresizingMaskIntoConstraints = false
        emailImage.topAnchor.constraint(equalTo: titleLabel2.bottomAnchor,constant: 40).isActive = true
        emailImage.leftAnchor.constraint(equalTo: scrollView.leftAnchor,constant: 50).isActive = true
        
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.leftAnchor.constraint(equalTo: emailImage.rightAnchor,constant: 20).isActive = true
        emailLabel.topAnchor.constraint(equalTo: emailImage.topAnchor).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: emailImage.bottomAnchor).isActive = true
        
        phoneImage.translatesAutoresizingMaskIntoConstraints = false
        phoneImage.leftAnchor.constraint(equalTo: emailImage.leftAnchor).isActive = true
        phoneImage.topAnchor.constraint(equalTo:emailImage.bottomAnchor,constant: 30).isActive = true
        
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.leftAnchor.constraint(equalTo: phoneImage.rightAnchor,constant: 20).isActive = true
        phoneLabel.topAnchor.constraint(equalTo: phoneImage.topAnchor).isActive = true
        phoneLabel.bottomAnchor.constraint(equalTo: phoneImage.bottomAnchor).isActive = true
        
        webImage.translatesAutoresizingMaskIntoConstraints = false
        webImage.leftAnchor.constraint(equalTo: phoneImage.leftAnchor).isActive = true
        webImage.topAnchor.constraint(equalTo:phoneImage.bottomAnchor,constant: 30).isActive = true
        
        webLabel.translatesAutoresizingMaskIntoConstraints = false
        webLabel.leftAnchor.constraint(equalTo: webImage.rightAnchor,constant: 20).isActive = true
        webLabel.topAnchor.constraint(equalTo: webImage.topAnchor).isActive = true
        webLabel.bottomAnchor.constraint(equalTo: webImage.bottomAnchor).isActive = true
        
        
        
        
    }

}
