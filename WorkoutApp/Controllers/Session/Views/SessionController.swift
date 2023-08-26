//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Kirill Gusev on 26.07.2023.
//

import UIKit

class SessionController: WABaseController {

    private let timerView = TimerView()
    private let statsView = StatsView(with: R.Strings.Session.workoutStats)
    private let stepsView = StepsView(with: R.Strings.Session.stepsCounter)
    
    private var timerDuration = 60.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
        setTitleForNavBarButton(
            timerView.state == .isRunning
            ? R.Strings.Session.navBarPause : R.Strings.Session.navBarStart,
            at: .left)
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        setTitleForNavBarButton(R.Strings.Session.navBarStart, at: .left)
    }
    
}

extension SessionController {
    
    
    override func setupViews() {
        super.setupViews()

        view.setupView(timerView)
        view.setupView(statsView)
        view.setupView(stepsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        
        NSLayoutConstraint.activate([
                
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor , constant: 10),
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7.5),
            
            stepsView.topAnchor.constraint(equalTo: statsView.topAnchor),
            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor),
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButtons(with: .left, title: R.Strings.Session.navBarStart)
        addNavBarButtons(with: .right, title: R.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
//        timerView.callBack = { [weak self] in
//            self?.navBarRightButtonHandler()
//        }
        
        statsView.configure(with: [.heartRate(value: "155"),
                                   .averagePace(value: "8'20''"),
                                   .totalSteps(value: "7,682"),
                                   .totalDistance(value: "8.25")
                                  ])
        stepsView.configure(with: [])
    }
}
