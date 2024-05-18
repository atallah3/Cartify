//
//  ProductsTVCell.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 18/05/2024.
//

import UIKit

class ProductsTVCell: UITableViewCell {

    static let identifier = "ProductsTVCell"
    
    @IBOutlet var collectionView: UICollectionView!
    var products : [model] = []
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(ProductsCollectionVCell.nib(), forCellWithReuseIdentifier: ProductsCollectionVCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //MARK: - function
    static func nib() -> UINib {
        return UINib(nibName: "ProductsTVCell", bundle: nil)
    }
    
    
    func configure(with products : [model]) {
        self.products = products
    }
    
}


extension ProductsTVCell: UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductsCollectionVCell.identifier, for: indexPath) as! ProductsCollectionVCell
        cell.setImage(for: products[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    
}
