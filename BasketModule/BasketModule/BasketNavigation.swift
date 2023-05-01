//
//  BasketNavigation.swift
//  BasketModule
//
//  Created by Batikan Sosun on 19.03.2023.
//

import Foundation
import UIKit
import CoreModule


public protocol BasketNavigationService {
    var container: DIContainerService { get set }
    var navigationController: UINavigationController? { get set }
    func openBasketViewController()
    func openPaymentViewController()
}


public class BasketNavigation: BasketNavigationService {
    public var container: CoreModule.DIContainerService
    public var navigationController: UINavigationController?
    
    public init(container: CoreModule.DIContainerService,
                navigationController: UINavigationController? = nil) {
        self.container = container
        self.navigationController = navigationController
        registerViewControllers()
    }
    
    
    private func registerViewControllers() {
        container.register(type: PresentableBasketView.self) { container in
            BasketViewController(navigationService: container.resolve(type: BasketNavigationService.self)!)
        }
    }
    

    
    public func openBasketViewController() {
        let viewController = container.resolve(type: PresentableBasketView.self)!
        navigationController?.show(viewController.toPresent(), sender: nil)
    }
    
    public func openPhoneUpdateViewController() {
        
    }
    
    public func openPaymentViewController() {
        let appNavigationService = container.resolve(type: NavigationService.self)!
        appNavigationService.openPaymentViewController()
    }
    
}
