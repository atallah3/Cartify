//
//  CRBodyLabel.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 09/05/2024.
//

import UIKit

class CRBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(textAlignment : NSTextAlignment,fontSize : CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize,weight: .bold)
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .secondaryLabel
        lineBreakMode = .byWordWrapping
    }
}
