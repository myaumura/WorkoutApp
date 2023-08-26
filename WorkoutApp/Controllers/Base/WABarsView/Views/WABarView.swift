//
//  WABarView.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.08.2023.
//

import UIKit

extension WABarView {
    struct Data {
        
        let value: String
        let heightParm: Double
        let title: String
        
    }
}

final class WABarView: WABaseView {
    
    private let heightParm: Double
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.active
        return label
    }()
    
    private let barView: UIView = {
        let view = UIView()
        view.backgroundColor = R.Colors.active
        view.layer.cornerRadius = 2.5
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 9)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    init(data: Data ) {
        self.heightParm = data.heightParm
        super.init(frame: .zero)
        valueLabel.text = data.value
        titleLabel.text = data.title
    }
    
    required init?(coder: NSCoder) {
        self.heightParm = 0
        super.init(frame: .zero)
    }
    
    
}

extension WABarView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(valueLabel)
        setupView(barView)
        setupView(titleLabel)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightParm, constant: -40),
            
           
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
    
}
