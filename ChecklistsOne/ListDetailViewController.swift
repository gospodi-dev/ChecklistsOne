//
//  ListDetailViewController.swift
//  ChecklistsOne
//
//  Created by Gospodi on 03.07.2022.
//

import UIKit

protocol ListDetailViewControllerDelegate: AnyObject {
    func listDetailViewControllerDidCancel(
        _ controller: ListDetailViewController)
    
    func listDetailViewController(
        _ controller: ListDetailViewController,
        didFinishAdding checklist: Checklist
    )
    
    func listDetailViewController(
        _ controller: ListDetailViewController,
        didFinishEditing checklist: Checklist
    )
}

class ListDetailViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet var textField: UITextField!
    @IBOutlet var doneBarButton: UIBarButtonItem!
    
    weak var delegate: ListDetailViewControllerDelegate?
    
    var checklistToEdit: Checklist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // изменяет заголовок экрана, если пользователь редактирует существующий контрольный список, и помещает его имя в текстовое поле.
        if let checklist = checklistToEdit {
            title = "Edit Checklist"
            textField.text = checklist.name
            doneBarButton.isEnabled = true
        }
    }
    //метод для всплывающей клавиатуры
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      textField.becomeFirstResponder()
    }
}
