//
//  WABarsView.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.08.2023.
//

import UIKit

final class WABarsView: WABaseView {
    
    private let stackView: UIStackView = {
       let view = UIStackView()
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [String]) {
        data.forEach { _ in
            let barView = UIView()
            
            stackView.addArrangedSubview(barView)
        }
    }
}

extension WABarsView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
      
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    
    }
    
}
