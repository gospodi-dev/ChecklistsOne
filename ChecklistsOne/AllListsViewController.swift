//
//  AllListsViewController.swift
//  ChecklistsOne
//
//  Created by Gospodi on 30.06.2022.
//

import UIKit

class AllListsViewController: UITableViewController {
    
    let cellIdentifier = "ChecklistCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
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
}
