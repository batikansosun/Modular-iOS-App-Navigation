//
//  LoginViewController.swift
//  LoginModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import UIKit
import CoreModule

public class LoginViewController: UIViewController, PresentableLoginView {
    
    
    var navigationService: LoginNavigationService
    
    public init(navigationService: LoginNavigationService) {
        self.navigationService = navigationService
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Login"
    }

    @IBAction private func pressedBasketButton() {
        navigationService.openBasketViewController()
    }

}
