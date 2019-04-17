//
//  Swinject+.swift
//  IDgHub
//
//  Created by Igor Dorogokuplia on 4/16/19.
//

import Swinject

extension Resolver {
    
    /// Retrieves the instance with the specified service type.
    ///
    /// - Parameter serviceType: The service type to resolve.
    ///
    /// - Returns: The resolved service type instance
    func forceResolve<T>(_ type: T.Type) -> T {
        guard let result = resolve(type) else {
            fatalError("Can't resolve type - \(type)")
        }
        return result
    }
}
