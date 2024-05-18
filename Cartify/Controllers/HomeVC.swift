//
//  HomeVC.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 01/05/2024.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var products : [model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        products.append(model(image: "pencil.circle.fill"))
        
        tableView.register(ProductsTVCell.nib(), forCellReuseIdentifier: ProductsTVCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension HomeVC : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductsTVCell.identifier, for: indexPath) as! ProductsTVCell
        cell.configure(with: products)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
}

struct model {
    let image : String
}
