//
//  FilmSortingCriterion.swift
//  Dubizzle-Movies-List_iOSApp
//
//  Created by El-Abd on 12/23/19.
//  Copyright © 2019 El-Abd. All rights reserved.
//

import Foundation

public enum FilmSortingCriterion {
    
    // MARK: - Cases
    
    case popularity(order: OrderingCriteria)
    case releaseDate(order: OrderingCriteria)
    case revenue(order: OrderingCriteria)
    case primaryReleaseDate(order: OrderingCriteria)
    case originalTitle(order: OrderingCriteria)
    case voteAverageCount(order: OrderingCriteria)
    case voteCount(order: OrderingCriteria)
    
    // MARK: - Properties
    
    var value: String {
        switch self {
        case .popularity(let order): return "popularity" + order.stringPath
        case .releaseDate(let order): return "release_date" + order.stringPath
        case .revenue(let order): return "revenue" + order.stringPath
        case .primaryReleaseDate(let order): return "primary_release_date" + order.stringPath
        case .originalTitle(let order): return "original_title" + order.stringPath
        case .voteAverageCount(let order): return "vote_average" + order.stringPath
        case .voteCount(let order): return "vote_count" + order.stringPath
        }
    }
}
