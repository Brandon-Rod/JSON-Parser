//
//  UIView+ext.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superView: UIView) {
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            topAnchor.constraint(equalTo: superView.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor)
        
        ])
        
    }
    
}
