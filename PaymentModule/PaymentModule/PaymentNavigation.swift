//
//  PaymentNavigation.swift
//  PaymentModule
//
//  Created by Batikan Sosun on 19.03.2023.
//

import Foundation
import UIKit
import CoreModule


public protocol PaymentNavigationService {
    var container: DIContainerService { get set }
    var navigationController: UINavigationController? { get set }
    func popToRootViewController()
}


public class PaymentNavigation: PaymentNavigationService {
    public var container: CoreModule.DIContainerService
    public var navigationController: UINavigationController?
    
    public init(container: CoreModule.DIContainerService,
                navigationController: UINavigationController? = nil) {
        self.container = container
        self.navigationController = navigationController
        registerViewControllers()
    }
    
    
    private func registerViewControllers() {
        container.register(type: PresentablePaymentView.self) { container in
            PaymentViewController(navigationService: container.resolve(type: PaymentNavigationService.self)!)
        }
    }

    public func popToRootViewController() {
        navigationController?.popToRootViewController(animated: true)
    }
}
