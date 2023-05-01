//
//  PaymentViewController.swift
//  PaymentModule
//
//  Created by Batikan Sosun on 8.03.2023.
//

import UIKit
import CoreModule

public class PaymentViewController: UIViewController, PresentablePaymentView {
    
    var navigationService: PaymentNavigationService
    
    public init(navigationService: PaymentNavigationService) {
        self.navigationService = navigationService
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    public override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Payment"
    }
    
    @IBAction private func pressedDismissButton() {
        navigationService.popToRootViewController()
    }
    

}
