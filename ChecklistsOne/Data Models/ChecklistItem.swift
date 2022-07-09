//
//  ChecklistItem.swift
//  ChecklistsOne
//
//  Created by Gospodi on 23.02.2022.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    
    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1
}

