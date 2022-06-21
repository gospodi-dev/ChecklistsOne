//
//  AddItemViewController.swift
//  ChecklistsOne
//
//  Created by Gospodi on 28.02.2022.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
    // MARK: - Actions
    // добавляем действия при нажатии на кнопки
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Table View Delegates
    // убираем выделение строки
    override func tableView(
        _ tableView: UITableView,
        willSelectRowAt indexPath: IndexPath
    ) -> IndexPath? {
        return nil
    }
    // чтобы клавиатура автоматически появлялась при открытии экрана
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      textField.becomeFirstResponder()
    }

}
