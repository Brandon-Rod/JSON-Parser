//
//  JPTitleLabel.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

class JPTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func configure() {
        
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        textAlignment = .left
        font = UIFont.preferredFont(forTextStyle: .title1)
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
