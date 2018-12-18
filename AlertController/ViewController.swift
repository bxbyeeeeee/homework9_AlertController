//
//  ViewController.swift
//  AlertController
//
//  Created by student on 2018/12/6.
//  Copyright © 2018年 baoxinbei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "please choose color", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "DARK GRAY", style: .default, handler: {(action) in self.view.backgroundColor = UIColor.darkGray}))
        alert.addAction(UIAlertAction(title: "BROWN", style: .default, handler: {(action) in self.view.backgroundColor = UIColor.brown}))
        alert.addAction(UIAlertAction(title: "BLACK", style: .destructive, handler: {(action) in self.view.backgroundColor = UIColor.black}))
        alert.addAction(UIAlertAction(title: "GRAY", style: .cancel, handler: {(action) in self.view.backgroundColor = UIColor.gray}))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "login meassage", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: {(action) in
           
            guard let username = alert.textFields?.first?.text, let password = alert.textFields?.last?.text else{
                return
            }
            print("username=\(username) password=\(password)")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(action) in
            
        }))
        alert.addTextField{ (textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField{ (textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
    }
}

