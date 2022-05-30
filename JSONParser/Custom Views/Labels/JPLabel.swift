//
//  JPSubtitleLabel.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

class JPLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
    }
    
    convenience init(text: String) {
        self.init(frame: .zero)
        
        self.text = text
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func configure() {
        
        textColor = .label
        adjustsFontSizeToFitWidth = true
        font = UIFont.preferredFont(forTextStyle: .title2)
        textAlignment = .left
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
