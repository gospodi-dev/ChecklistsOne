//
//  Checklist.swift
//  ChecklistsOne
//
//  Created by Gospodi on 01.07.2022.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]() // пустой массив, который может содержать `ChecklistItem` объекты
    init(name: String) {
        self.name = name
        super.init()
    }
    // 
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}
