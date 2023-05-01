//
//  NavigationService.swift
//  MainApp
//
//  Created by Batikan Sosun on 14.03.2023.
//

import Foundation
import UIKit

public protocol NavigationService: ExternalNavigationService {
    var navigationController: UINavigationController { get set }
    var container: DIContainerService { get set }
    func popToRootViewController(animated: Bool)
}



public protocol PresentableView {
    func toPresent() -> UIViewController
}

public extension PresentableView where Self: UIViewController {
    func toPresent() -> UIViewController {
        return self
    }
}


public protocol PresentableLoginView: PresentableView {}
public protocol PresentableBasketView: PresentableView {}
public protocol PresentablePaymentView: PresentableView {}



public protocol ExternalNavigationService {
    func openLoginViewController()
    func openBasketViewController()
    func openPaymentViewController()
}


