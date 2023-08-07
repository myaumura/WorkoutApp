//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 07.08.2023.
//

import UIKit

final class OverviewNavBar : BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    
}

extension OverviewNavBar {
    
    override func addViews() {
        super.addViews()
        
        addSubview(titleLabel)
        addSubview(allWorkoutsButton)
        addSubview(addButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .white
        addBottomBorder(with: Resources.Colors.separator, height: 1)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resources.Strings.TabBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        allWorkoutsButton.addTarget(self,action: #selector(allWorkoutsButtonAction), for: .touchUpInside)

        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Images.Common.add, for: .normal)
        addButton.addTarget(self,action: #selector(addButtonAction), for: .touchUpInside)
        
    }
}

@objc extension OverviewNavBar {
    
    func allWorkoutsButtonAction() {
        print("All Workouts button tapped")
    }
    
    func addButtonAction() {
        print("Add button tapped")
    }
}
