//
//  URLParameter.swift
//  Dubizzle-Movies-List_iOSApp
//
//  Created by El-Abd on 12/23/19.
//  Copyright © 2019 El-Abd. All rights reserved.
//

import Foundation

struct URLParameter {
    
    // MARK: - Properties
    
    let key: String
    let value: String
    
    // MARK: - Initializer
    
    init(key: String, value: String) {
        self.key = key
        self.value = value
    }
}

// MARK: -

extension URLParameter: Equatable {
    
    // MARK: - Equatable
    
    public static func == (lhs: URLParameter, rhs: URLParameter) -> Bool {
        return lhs.key == rhs.key && lhs.value == rhs.value
    }
}

// MARK: -

extension Array where Element == URLParameter {
    
    // MARK: - Array subscript
    
    subscript(key: String) -> [String] {
        get {
            return self.lazy.filter { $0.key == key }.map { $0.value }
        }
    }
    
    // MARK: -
    
    mutating func append(key: String, value: String) {
        self.append(URLParameter(key: key, value: value))
    }
}
