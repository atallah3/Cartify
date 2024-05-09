//
//  CRTitleLabel.swift
//  Cartify
//
//  Created by Abd Elrahman Atallah on 09/05/2024.
//

import UIKit

class CRTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(frame: CGRect,textAlignment : NSTextAlignment,fontSize : CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize,weight: .bold)
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .label
        lineBreakMode = .byTruncatingTail //ends with (...) if exceeds label width
    }
}
