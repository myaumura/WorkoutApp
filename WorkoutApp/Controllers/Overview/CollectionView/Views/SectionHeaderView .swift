//
//  SectionHeaderView .swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 04.09.2023.
//

import UIKit

final class SectionHeaderView : UICollectionReusableView {
    
    static let id = "SectionHeaderView"
    
    private let title : UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textAlignment = .center
        label.textColor = R.Colors.inactive
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd"
        self.title.text = dateFormatter.string(from: date).uppercased()
        
    }
}

extension SectionHeaderView {
    
    func setupViews() {
        
        setupView(title)
        
    }
    
    
    func constraintViews() {
        
        
        NSLayoutConstraint.activate([
            
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
        
    }
    
    func configureAppearance() {
        
        backgroundColor = .clear
        
    }
}
