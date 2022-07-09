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
    
    // Это запрашивает у `DataModel` объекта новый идентификатор элемента всякий раз, когда приложение создает новый `ChecklistItem` объект и заменяет начальное значение -1 этим уникальным идентификатором.
    override init() {
      super.init()
      itemID = DataModel.nextChecklistItemID()
    }
}

