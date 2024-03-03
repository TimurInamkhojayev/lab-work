//
//  AddController.swift
//  To-Do App
//
//  Created by Timur Inamkhojayev on 02.03.2024.
//
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addPressed(_ sender: UIButton) {
        if (textField.text != nil) && textField.text != ""{
            todoList?.append(textField.text!)
            textField.text = ""
            textField.placeholder = "Add more"
        }
        
    }

}
