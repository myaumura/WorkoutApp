//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 09.08.2023.
//

import UIKit

extension WeekView {
    
    final class WeekdayView: BaseView {
        
        private let nameLabel: UILabel = {
           let label = UILabel()
            label.font = R.Fonts.helveticaRegular(with: 9)
            label.textAlignment = .center
            return label
        }()
        
        private let dateLabel: UILabel = {
            let dateLabel = UILabel()
            dateLabel.font = R.Fonts.helveticaRegular(with: 15)
            dateLabel.textAlignment = .center
            return dateLabel
        }()
        
        private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.spacing = 3
            stackView.axis = .vertical
            return stackView
        }()
        
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.goForward(to: index)
            let day = Date.calendar.component(.day, from: currentDay)
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? R.Colors.active : R.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : R.Colors.inactive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : R.Colors.inactive
            
        }
    }
}

extension WeekView.WeekdayView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
         
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
            }
}
