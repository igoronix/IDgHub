//
//  DependencyManager.UI.Welcome.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/17/19.
//

import Swinject

extension DependencyManager.UI {
    final class WelcomeAssembly: Assembly {
        func assemble(container c: Container) {
            c.register(WelcomeView.self) { _ in
                Storyboard.welcome.welcomeView()!
                }.initCompleted { resolver, view in
                    let presenter = resolver.resolve(WelcomePresenter<WelcomeView>.self)!
//                    view.lifecycleListener = presenter
                    view.presenter = presenter
            }
            
            c.register(WelcomePresenter.self) { resolver in
                return WelcomePresenter<WelcomeView>(resolver.resolve(WelcomeRouterProtocol.self)!)
                //sessionManager: resolver.resolve(SessionManager.self)!)
                }.initCompleted { resolver, presenter in
                    presenter.attach(view: resolver.resolve(WelcomeView.self))
            }
            
            c.register(WelcomeRouterProtocol.self) { _ in
                return WelcomeRouter()
            }
        }
    }
}
