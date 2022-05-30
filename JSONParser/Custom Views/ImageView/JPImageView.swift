//
//  JPImageView.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

class JPImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setImage(mission: Mission) {
        
        image = UIImage(named: mission.name)
        
    }

}
