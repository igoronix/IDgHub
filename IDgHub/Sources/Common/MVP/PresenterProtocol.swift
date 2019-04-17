//
//  PresenterProtocol.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/16/19.
//

import Foundation

class BasePresenter<ViewType: ViewInputProtocol>: ViewLifecycleEventsProtocol {
    
    private(set) weak var view: ViewType?
    
    func attach(view: ViewType?) {
        self.view = view
        
        if let view = view as? BaseView {
            view.lifecycleListener = self
        }
    }
    
    // MARK: - <ViewLifecycleEventsProtocol>
    
    func viewDidLoad() {}
    func viewWillAppear(_ animated: Bool) {}
    func viewDidAppear(_ animated: Bool) {}
    func viewWillDisappear(_ animated: Bool) {}
    func viewDidDisappear(_ animated: Bool) {}
}
