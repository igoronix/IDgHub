//
//  BaseView.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/16/19.
//

import UIKit
import RxSwift

protocol ViewInputProtocol: AnyObject { }

protocol ViewOutputProtocol: AnyObject { }

protocol ViewLifecycleEventsProtocol {
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
}

/// Base class for View.
///
class BaseView: UIViewController {
    var lifecycleListener: ViewLifecycleEventsProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lifecycleListener?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        lifecycleListener?.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        lifecycleListener?.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        lifecycleListener?.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        lifecycleListener?.viewDidDisappear(animated)
    }
}
