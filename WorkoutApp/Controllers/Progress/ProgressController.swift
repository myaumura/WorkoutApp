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
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        addNavBarButtons(with: .left, title: "Export")
        addNavBarButtons(with: .right, title: "Details")
    }
}

   

