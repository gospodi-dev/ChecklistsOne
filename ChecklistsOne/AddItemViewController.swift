//
//  AddItemViewController.swift
//  ChecklistsOne
//
//  Created by Gospodi on 28.02.2022.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
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
    
    // MARK: - Text Field Delegates
    // один из методов `UITextField` делегирования. Он вызывается каждый раз, когда пользователь изменяет текст, будь то нажатием на клавиатуру или с помощью cut/paste.
    func textField(
      _ textField: UITextField,
      shouldChangeCharactersIn range: NSRange,
      replacementString string: String
    ) -> Bool {
      let oldText = textField.text!
      let stringRange = Range(range, in: oldText)!
      let newText = oldText.replacingCharacters(
        in: stringRange,
        with: string)
      if newText.isEmpty {
        doneBarButton.isEnabled = false
      } else {
        doneBarButton.isEnabled = true
      }
      return true
    }

}
