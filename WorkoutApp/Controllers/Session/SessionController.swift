//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.07.2023.
//

import UIKit

class SessionController: BaseController {

    private let timerView = TimerView()
    
    private var timerDuration = 3.0
}

extension SessionController {
    
    
    override func setupViews() {
        super.setupViews()

        view.setupView(timerView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        
        NSLayoutConstraint.activate([
        
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 400),
        
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButtons(with: .left, title: "Pause")
        addNavBarButtons(with: .right, title: "Finish")
        
        timerView.configure(with: timerDuration, progress: 1.5)
    }
}
