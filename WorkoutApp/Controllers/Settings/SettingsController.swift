//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.07.2023.
//

import UIKit

class SettingsController: WABaseController {
    
    
}

extension SettingsController {
    
    override func setupViews() {
        super.setupViews()

    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
                
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    
        title = R.Strings.NavBar.settings
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .settings)
    }
}
