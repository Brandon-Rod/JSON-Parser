//
//  JPBodyLabel.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

class JPBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func configure() {
        
        textColor = .label
        font = UIFont.preferredFont(forTextStyle: .body)
        numberOfLines = 0
        textAlignment = .left
        adjustsFontSizeToFitWidth = true
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
