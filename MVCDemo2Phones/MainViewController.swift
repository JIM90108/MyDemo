//
//  ViewController.swift
//  MVCDemo2Phones
//
//  Created by thermaltake on 2023/2/1.
//

import UIKit

class MainViewController: UIViewController {
    
    let ProductTbv = ProductView()
    var products: [Product]?
    var delegate:ProductDeleget?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        ProductTbv.tableView.dataSource = self
        ProductTbv.tableView.delegate = self
        products = [
          Product(name: "1907 Wall Set", cellImageName: "image-cell1", cellfullscreenImageName: "phone-fullscreen1"),
          Product(name: "1921 Dial Phone", cellImageName: "image-cell2", cellfullscreenImageName: "phone-fullscreen2"),
          Product(name: "1937 Desk Set", cellImageName: "image-cell3", cellfullscreenImageName: "phone-fullscreen3"),
          Product(name: "1984 Moto Portable", cellImageName: "image-cell4", cellfullscreenImageName: "phone-fullscreen4")
        ]
        
        
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        self.view = ProductTbv
        ProductTbv.setViews()
        ProductTbv.setLayouts()
    }
    

}

protocol ProductDeleget{
    func  fetchProductName(name:String)
}



extension MainViewController: UITableViewDataSource,UITableViewDelegate{

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.identifier, for: indexPath) as? ProductTableViewCell else { return UITableViewCell()}
        cell.productImage.image = UIImage(named: products![indexPath.row].cellImageName!)
        cell.Productlabel.text = products![indexPath.row].name!
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let insVC = ProductInsViewController()
        self.navigationController?.pushViewController(insVC, animated: true)
        let row = tableView.indexPathForSelectedRow?.row
        insVC.productName = products![row!].name!
        insVC.productFullImageName = products![row!].fullscreenImageName!
                
    }
    
}

