//
//  ViewController.swift
//  Emojional
//
//  Created by Helen on 6/11/19.
//  Copyright © 2019 Helen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton){
        //when a user clicks a button, a message pops up that the user can then press 'OK' to exit from the message. Then the user can select another button
        let alertController = UIAlertController(title: "We All Get EMOJIonal", message: "Hello", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

