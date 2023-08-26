//
//  StepsView.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.08.2023.
//

import UIKit

final class StepsView: WABaseInfoView {
    
    private let barsView = UIView()
    
    
    func configure(with items: [StatsItem]) {
//        items.forEach {
//            let itemView = StatsItemView()
//            itemView.configure(with: $0)
//            stackView.addArrangedSubview(itemView)
//        }
        barsView.backgroundColor = .red
    }

}

extension StepsView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(barsView)
                
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),

            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
}
