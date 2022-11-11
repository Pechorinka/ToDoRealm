//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Tatyana Sidoryuk on 09.11.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
              cell.delegate = self
              return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        let deleteAction  = SwipeAction(style: .destructive, title: "Удалить") { action, indexPath in
            
            self.updateModel(at: indexPath)

            }
            return [deleteAction]
    }
    
    func updateModel (at indexPath: IndexPath) {
        
    }
}
