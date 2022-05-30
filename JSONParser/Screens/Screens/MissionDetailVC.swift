//
//  MissionDetailVC.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/29/22.
//

import UIKit

class MissionDetailVC: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let jpImageView = JPImageView(frame: .zero)
    let subtitleLabel = JPLabel()
    let yearLabel = JPLabel()
    let detailTextView = JPBodyLabel()
    
    let mission: Mission
    
    var itemViews: [UIView] = []
    
    init(mission: Mission) {
        
        self.mission = mission
        
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureVC()
        configureScrollView()
        layoutUI()
        
    }
    
    private func configureVC() {
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        title = mission.name
        
        jpImageView.setImage(mission: mission)
        subtitleLabel.text = "Subtitle: " + mission.subtitle
        yearLabel.text = "Year: \(mission.year)"
        detailTextView.text = mission.detail
        
    }
    
    private func configureScrollView() {
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.pinToEdges(of: view)
        contentView.pinToEdges(of: scrollView)
        
        NSLayoutConstraint.activate([
        
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 820)
        
        ])
        
    }
    
    private func layoutUI() {
        
        itemViews = [jpImageView, subtitleLabel, yearLabel, detailTextView]
        
        let padding: CGFloat = 20
        let imageWidthAndHeight: CGFloat = 400
        let labelHeight: CGFloat = 23
        let detailTextViewHeight: CGFloat = 140
        
        for itemView in itemViews {
            
            contentView.addSubview(itemView)
            
            NSLayoutConstraint.activate([
            
                itemView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
                itemView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding)
                
            ])
            
        }
        
        NSLayoutConstraint.activate([
            
            jpImageView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: padding),
            jpImageView.heightAnchor.constraint(equalToConstant: imageWidthAndHeight),
            jpImageView.widthAnchor.constraint(equalToConstant: imageWidthAndHeight),
            
            subtitleLabel.topAnchor.constraint(equalTo: jpImageView.bottomAnchor, constant: padding),
            subtitleLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            yearLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: padding),
            yearLabel.heightAnchor.constraint(equalToConstant: labelHeight),
            
            detailTextView.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 0),
            detailTextView.heightAnchor.constraint(equalToConstant: detailTextViewHeight)
            
        ])
        
    }
    
}
