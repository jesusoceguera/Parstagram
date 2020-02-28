//
//  ViewController.swift
//  Parstagram
//
//  Created by JESUS OCEGUERA-PENA on 2/27/20.
//  Copyright © 2020 JESUS OCEGUERA-PENA. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createTestUser() {
        let user = PFUser()
        user.username = "Test"
        user.password = "password"
        user["school"] = "CSN"
        user["major"] = "computer science"
        
        user.signUpInBackground { (success, error) in
            if success {
                print("Successfully created test user")
            } else {
                print("Error: \(error?.localizedDescription ?? "some error happened")")
            }
        }
    }
}

