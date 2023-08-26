//
//  StatsItemView.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 25.08.2023.
//

import UIKit

enum StatsItem {
    
    case heartRate(value: String)
    case averagePace(value: String)
    case totalSteps(value: String)
    case totalDistance(value: String)
    
    var data: StatsItemView.ItemData {
        switch self {
            
        case .heartRate(let value):
            return .init(image: R.Images.Session.heartRate,
                         value: value + "bpm" ,
                         title: R.Strings.Session.heartRate)
            
        case .averagePace(let value):
            return .init(image: R.Images.Session.averagePace,
                         value: value + " / km",
                         title: R.Strings.Session.averagePace)
           
        case .totalSteps(let value):
            return .init(image: R.Images.Session.totalSteps,
                         value: value,
                         title: R.Strings.Session.totalSteps)
            
        case .totalDistance(let value):
            return .init(image: R.Images.Session.totalDistance,
                         value: value + "km",
                         title: R.Strings.Session.totalDistance)
        
        }
    }
    
}

final class StatsItemView: WABaseView {
    
    struct ItemData {
        let image: UIImage?
        let value: String
        let title: String
    }
    
    private let imageView = UIImageView()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 17)
        label.textColor = R.Colors.titleGray
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 10)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    func configure(with item:StatsItem) {
        imageView.image = item.data.image
        valueLabel.text = item.data.value
        titleLabel.text = item.data.title.uppercased()
    }
}

extension StatsItemView{
    
    override func setupViews() {
        super.setupViews()
        
        setupView(imageView)
        setupView(stackView)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(titleLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 23),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
