//
//  ViewController.swift
//  TableViewLoadingState
//
//  Created by Alfian Losari on 4/20/16.
//  Copyright © 2016 Alfian Losari. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var tableState = TableState<String>.Loading {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableState.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let item = tableState.value(indexPath.row)
        cell.textLabel?.text = item
        return cell
    }
    
    
}

