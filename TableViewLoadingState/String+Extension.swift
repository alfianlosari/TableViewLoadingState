//
//  String+Extension.swift
//  TableViewLoadingState
//
//  Created by Alfian Losari on 4/20/16.
//  Copyright © 2016 Alfian Losari. All rights reserved.
//

import Foundation

extension String: TableValuable {
    
    typealias TableItem = String
    
    static func failedValue() -> TableItem {
        return "Failed"
    }
    
    
    static func loadingValue() -> TableItem {
        return "Loading"
    }
    
    
    func value() -> TableItem {
        return self
    }
}
