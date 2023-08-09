//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.07.2023.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        addNavBarButtons(with: .left, title: "Export")
        addNavBarButtons(with: .right, title: "Details")
    }
}

   

