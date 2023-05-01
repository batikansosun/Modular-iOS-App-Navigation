//
//  LoginModule.swift
//  CoreModule
//
//  Created by Batikan Sosun on 16.03.2023.
//

import Foundation
import UIKit
import CoreModule


public protocol LoginNavigationService {
    var container: DIContainerService { get set }
    var navigationController: UINavigationController? { get set }
    func openLoginViewController()
    func openPhoneUpdateViewController()
    
    func openBasketViewController()
}

public class LoginNavigation: LoginNavigationService {
    public var container: CoreModule.DIContainerService
    public var navigationController: UINavigationController?
    
    public init(container: CoreModule.DIContainerService,
                navigationController: UINavigationController? = nil) {
        self.container = container
        self.navigationController = navigationController
        registerViewControllers()
    }
    
    private func registerViewControllers() {
        container.register(type: PresentableLoginView.self) { container in
            LoginViewController(navigationService: container.resolve(type: LoginNavigationService.self)!)
        }
    }
    
    public func openLoginViewController() {
        let viewController = container.resolve(type: PresentableLoginView.self)!
        navigationController?.show(viewController.toPresent(), sender: nil)
    }
    
    public func openPhoneUpdateViewController() {
        
    }
    
    public func openBasketViewController() {
        let appNavigationService = container.resolve(type: NavigationService.self)!
        appNavigationService.openBasketViewController()
    }
    
}
