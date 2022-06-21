//
//  ViewController.swift
//  ChecklistsOne
//
//  Created by Gospodi on 20.02.2022.
//

import UIKit

class ChecklistViewController: UITableViewController {
    var items = [ChecklistItem]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true // свойство, как следует из названия, позволяет создавать большие заголовки
        
        // Replace previous code with the following
        let item1 = ChecklistItem()
        item1.text = "Выгулять собаку"
        items.append(item1)
        
        let item2 = ChecklistItem()
        item2.text = "Почистить зубы"
        item2.checked = true
        items.append(item2)
        
        let item3 = ChecklistItem()
        item3.text = "Изучить iOS разработку"
        item3.checked = true
        items.append(item3)
        
        let item4 = ChecklistItem()
        item4.text = "По практиковать игру в футбол"
        items.append(item4)
        
        let item5 = ChecklistItem()
        item5.text = "Съесть мороженное"
        items.append(item5)
    }
    
    
    // MARK: - Table View Data Source
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return items.count
    }
    
    override func tableView(
      _ tableView: UITableView,
      cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(
        withIdentifier: "ChecklistItem",
        for: indexPath)

      let item = items[indexPath.row]

      configureText(for: cell, with: item)
      configureCheckmark(for: cell, with: item)
      return cell
    }

    // MARK: - Table View Delegate
    override func tableView(
      _ tableView: UITableView,
      didSelectRowAt indexPath: IndexPath
    ) {
      if let cell = tableView.cellForRow(at: indexPath) {
        let item = items[indexPath.row]
        item.checked.toggle()
        configureCheckmark(for: cell, with: item)
      }
      tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(
      for cell: UITableViewCell,
      with item: ChecklistItem
    ) {
      if item.checked {
        cell.accessoryType = .checkmark
      } else {
        cell.accessoryType = .none
      }
    }

    func configureText(
      for cell: UITableViewCell,
      with item: ChecklistItem
    ) {
      let label = cell.viewWithTag(1000) as! UILabel
      label.text = item.text
    }
    
    override func tableView(
      _ tableView: UITableView,
      commit editingStyle: UITableViewCell.EditingStyle,
      forRowAt indexPath: IndexPath
    ) {
      // 1
      items.remove(at: indexPath.row)

      // 2
      let indexPaths = [indexPath]
      tableView.deleteRows(at: indexPaths, with: .automatic)
    }

    //MARK: - Actions
    @IBAction func addItem() {
        let newRowIndex = items.count
        
        let item = ChecklistItem()
        item.text = "Я новая строка!"
        items.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
}

