//
//  CRSecondaryLabel.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 09/05/2024.
//

import UIKit

class CRSecondaryLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(fontSize : CGFloat) {
        self.init(frame: .zero)
        self.font = UIFont.systemFont(ofSize: fontSize,weight: .medium)
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .secondaryLabel
        lineBreakMode = .byTruncatingTail //ends with (...) if exceeds label width
    }
}
