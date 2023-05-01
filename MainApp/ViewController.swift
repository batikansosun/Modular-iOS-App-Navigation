//
//  ViewController.swift
//  MainApp
//
//  Created by Batikan Sosun on 7.03.2023.
//

import UIKit
import BasketModule
import LoginModule
import PaymentModule
import CoreModule

//internal typealias Factory = (Any) -> Any

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Main App"

    }
    
    @IBAction private func pressedLoginButton() {
        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate {
            sceneDelegate.appNavigationService?.openLoginViewController()
        }
    }
    
}

