//
//  WelcomeView.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/17/19.
//

import UIKit

protocol WelcomeViewOutputProtocol: ViewOutputProtocol { }

class WelcomeView: BaseView {
    var presenter: WelcomeViewOutputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit {
        print("deinit WelcomeView")
    }
}

// MARK: - WelcomeViewInputProtocol

extension WelcomeView: WelcomeViewInputProtocol {
    func ff() {
        
    }
}
