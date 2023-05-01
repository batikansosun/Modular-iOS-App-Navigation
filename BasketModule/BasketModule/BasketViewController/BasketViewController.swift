//
//  BasketViewController.swift
//  BasketModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import UIKit
import CoreModule

public class BasketViewController: UIViewController, PresentableBasketView {
    
    var navigationService: BasketNavigationService
    
    public init(navigationService: BasketNavigationService) {
        self.navigationService = navigationService
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Basket"
    }
    
    
    @IBAction private func pressedPaymentButton() {
        navigationService.openPaymentViewController()
    }

}
