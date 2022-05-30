//
//  JPCellTableViewCell.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

class JPCell: UITableViewCell {

    static let reuseID = "JPCell"
    
    let jpImageView = JPImageView(frame: .zero)
    let titleLabel = JPTitleLabel()
    let subtitleLabel = JPLabel()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(mission: Mission) {
        
        jpImageView.setImage(mission: mission)
        titleLabel.text = mission.name
        subtitleLabel.text = mission.subtitle
        
    }
    
    private func configure() {
        
        addSubview(jpImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        let padding: CGFloat = 10
        
        NSLayoutConstraint.activate([
        
            jpImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            jpImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding + 10),
            jpImageView.widthAnchor.constraint(equalToConstant: 80),
            jpImageView.heightAnchor.constraint(equalTo: jpImageView.widthAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: jpImageView.trailingAnchor, constant: padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: padding),
            subtitleLabel.leadingAnchor.constraint(equalTo: jpImageView.trailingAnchor, constant: padding),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 23)
        
        ])
        
        
    }

}
