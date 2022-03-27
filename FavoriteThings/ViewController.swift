//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Model
    
    let favoriteThings = [
        //TODO: Fill this array with your favorite things. Then use this collection to populate your table.
        "water",
        "soil",
        "air",
        "rocks"
    ]

    // MARK: Table View Data Source Methods
    
    // number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        // TODO: Implement this method to get the correct row count
        // let placeholderCount = 5
        // return placeholderCount
        return self.favoriteThings.count
    }
    
    // cell for row at index path
    // When a table invokes the tableView(_:cellForRowAt:) method, it passes the control object an IndexPath. An index path is a struct that holds the row number. In order to populate our table cells, there are a few steps we need to perform in this method.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // For the Favorite Things app, we'll use a simple table view cell, that comes with a UILabel named textLabel and the reuse identifier of "FavoriteThingsCell".
    // Given the following possible implementations of tableView(_:cellForRowAt:), answer the following question.
      
        // TODO: Implement method
        // 1. Dequeue a reusable cell from the table, using the correct “reuse identifier”
        // 2. Find the model object that corresponds to that row
        // 3. Set the images and labels in the cell with the data from the model object
        // 4. return the cell.
        
        // Option C
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteThingCell")
        cell?.textLabel?.text = favoriteThings[indexPath.row]
        return cell ?? <#default value#> // Coalesce using '??' to provide a default when the optional value contains 'nil'
        
        /*
        let favoriteThingsForRow = self.favoriteThings[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = favoriteThingsForRow
        return cell
        */
        
        /* // only creates placeholderCell without being occupied with favouriteThings
        let placeholderCell = UITableViewCell()
        return placeholderCell
        */
    }
    // QUIZ: Which of these three method implementations perform all four of the steps previously outlined?
    // Option C correctly dequeues a cell, sets the label's text, and returns the cell.
}
