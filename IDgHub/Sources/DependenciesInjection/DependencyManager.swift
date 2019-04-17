//
//  DependencyManager.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/16/19.
//

import Swinject

final class DependencyManager: NSObject {
    lazy var assembler = Assembler([SingletonAssembly(),
                                    NetworkingAssembly()] + UI().assemblies)
    
    var resolver: Resolver {
        return assembler.resolver
    }
    
    struct UI { //swiftlint:disable:this type_name
        fileprivate var assemblies: [Assembly] = [
            WelcomeAssembly()
        ]
    }
}

extension DependencyManager {
    class NetworkingAssembly: Assembly {
        func assemble(container c: Container) {
//            c.register(NetworkSession.self) { resolver in
//                return resolver.resolve(SessionManager.self)!.session.networkSession
//            }
        }
    }
}

extension DependencyManager {
    class SingletonAssembly: Assembly {
        func assemble(container c: Container) {
//            c.register(SessionManager.self) { _ in
//                return SessionManager()
//                }.inObjectScope(.container)
        }
    }
}
