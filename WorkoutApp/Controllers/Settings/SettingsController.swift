//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.07.2023.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.NavBar.settings
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
    
    
    
}

