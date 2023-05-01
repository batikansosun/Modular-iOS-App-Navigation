//
//  AppNavigation.swift
//  MainApp
//
//  Created by Batikan Sosun on 14.03.2023.
//
import UIKit
import Foundation
import CoreModule
import BasketModule
import LoginModule
import PaymentModule

class AppNavigation: NavigationService, ExternalNavigationService {
    
    var navigationController: UINavigationController
    var container: DIContainerService
    
    init(navigationController: UINavigationController, container: DIContainerService) {
        self.navigationController = navigationController
        self.container = container
    }
    
    func openLoginViewController() {
        let loginNavigationService = container.resolve(type: LoginNavigationService.self)!
        let viewController = loginNavigationService.container.resolve(type: PresentableLoginView.self)!
        navigationController.show(viewController.toPresent(), sender: nil)
    }
    
    func openBasketViewController() {
        let basketNavigationService = container.resolve(type: BasketNavigationService.self)!
        let viewController = basketNavigationService.container.resolve(type: PresentableBasketView.self)!
        navigationController.show(viewController.toPresent(), sender: nil)
    }
    
    func openPaymentViewController() {
        let paymentNavigationService = container.resolve(type: PaymentNavigationService.self)!
        let viewController = paymentNavigationService.container.resolve(type: PresentablePaymentView.self)!
        navigationController.show(viewController.toPresent(), sender: nil)
    }
    
    func popToRootViewController(animated: Bool) {
        navigationController.popToRootViewController(animated: animated)
    }
    
}
