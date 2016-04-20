//
//  TableState+TableValuable.swift
//  TableViewLoadingState
//
//  Created by Alfian Losari on 4/20/16.
//  Copyright © 2016 Alfian Losari. All rights reserved.
//

import Foundation

protocol TableValuable {
    
    associatedtype TableItem
    static func loadingValue() -> TableItem
    static func failedValue() -> TableItem
    func value() -> TableItem
}

enum TableState<T: TableValuable> {
    
    case Failed
    case Loading
    case Items([T])
    
    
    var count: Int {
        switch self {
        case let .Items(items):
            return items.count
        
        case .Failed:
            return 1
            
        case .Loading:
            return 1
            
        }
    }
    
    func value(row: Int) -> T.TableItem {
        switch self {
        case .Failed:
            return T.failedValue()
            
        case .Loading:
            return T.loadingValue()
            
        case let .Items(items):
            let item = items[row]
            return item.value()
        }
        
        
    }

}