//
//  XAxisView.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 27.08.2023.
//

import UIKit

final class XAxisView: WABaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [WAChartsView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        data.forEach {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegular(with: 9)
            label.textAlignment = .center
            label.textColor = R.Colors.inactive
            label.text = $0.title.uppercased()
            
            stackView.addArrangedSubview(label)
        }
    }
}


extension XAxisView {
    
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
    
        backgroundColor = .clear
    }
    
}

