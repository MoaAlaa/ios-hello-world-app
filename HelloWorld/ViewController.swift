//
//  ViewController.swift
//  HelloWorld
//
//  Created by Mohamed Alaa El-Din on 11/7/18.
//  Copyright © 2018 Mohamed Alaa El-Din. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        
        var emjos = ["👻": "Ghost", "😂": "Laghing With Cring", "😇": "Inocence", "😎": "Cool" ]

        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
             let meaning = emjos[wordToLookup]
            
            let alertController = UIAlertController(title: "Welcome To My First App", message: meaning, preferredStyle: UIAlertController.Style.alert);
            
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        }
    }


}

