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
}
