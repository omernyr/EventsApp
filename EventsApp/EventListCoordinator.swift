//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by macbook pro on 12.02.2023.
//

import UIKit

final class EventListCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        navigationController.setViewControllers([eventListViewController], animated: false)
    }
    
    
}
