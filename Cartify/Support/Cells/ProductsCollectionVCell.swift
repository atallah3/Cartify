//
//  ProductsCollectionVCell.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 18/05/2024.
//

import UIKit

class ProductsCollectionVCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    static var identifier = "ProductsCollectionVCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    static func nib() -> UINib {
        UINib(nibName: "ProductsCollectionVCell", bundle: nil)
    }
    
     func setImage(for product : model) {
         self.imageView.image = UIImage(systemName: product.image)
    }
}
