//
//  AllListsViewController.swift
//  ChecklistsOne
//
//  Created by Gospodi on 30.06.2022.
//

import UIKit

class AllListsViewController: UITableViewController {
    
    let cellIdentifier = "ChecklistCell"
    var lists = [Checklist]() // равносильно Array<Checklist>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Включить большие заголовки
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        // 1
        var list = Checklist()
        list.name = "Birthdays"
        lists.append(list)

        // 2
        list = Checklist()
        list.name = "Groceries"
        lists.append(list)

        list = Checklist()
        list.name = "Cool Apps"
        lists.append(list)

        list = Checklist()
        list.name = "To Do"
        lists.append(list)
    }

    // MARK: - Table view data source

    override func tableView(
      _ tableView: UITableView,
      numberOfRowsInSection section: Int
    ) -> Int {
      return 3
    }

    override func tableView(
      _ tableView: UITableView,
      cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(
        withIdentifier: cellIdentifier, for: indexPath)
      cell.textLabel!.text = "List \(indexPath.row)"
      return cell
    }
    
    override func tableView(
      _ tableView: UITableView,
      didSelectRowAt indexPath: IndexPath
    ) {
      performSegue(withIdentifier: "ShowChecklist", sender: nil)
    }
}
