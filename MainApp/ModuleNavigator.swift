//
//  ModuleNavigator.swift
//  MainApp
//
//  Created by Batikan Sosun on 14.03.2023.
//

import Foundation
import CoreModule
import BasketModule
import LoginModule
import PaymentModule

class ModuleNavigator: NavigationService {
    var navigationController: UINavigationController
    private let container: DIContainerService
    
    init(navigationController: UINavigationController, container: DIContainerService) {
        self.navigationController = navigationController
        self.container = container
    }
    
    func navigateToLoginModule() {
        let viewController = container.resolve(type: PresentableLoginView.self, name: "PresentableLoginView")!
        let v = viewController.toPresent()
        navigationController.show(v, sender: nil)
    }
    
    func navigateToBasketModule() {
        let viewController = container.resolve(type: PresentableBasketView.self)!.toPresent()
        navigationController.show(viewController, sender: nil)
    }
    
    func navigatePaymentModule() {
        let viewController = container.resolve(type: PresentablePaymentView.self)!.toPresent()
        navigationController.show(viewController, sender: nil)
    }
    
    func popToRootViewController(animated: Bool) {
        navigationController.popToRootViewController(animated: animated)
    }
    
}
