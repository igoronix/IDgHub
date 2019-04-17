//
//  WelcomePresenter.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/17/19.
//

import Foundation
import UIKit

protocol WelcomeViewInputProtocol: ViewInputProtocol {
}

class WelcomePresenter<ViewType: WelcomeViewInputProtocol>: BasePresenter<ViewType> {
    
    private let router: WelcomeRouterProtocol
    
    init(_ router: WelcomeRouterProtocol) {
        self.router = router
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
}

// MARK: - WelcomeViewOutputProtocol

extension WelcomePresenter: WelcomeViewOutputProtocol { }
