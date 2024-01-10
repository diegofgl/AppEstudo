//
//  ViewController.swift
//  AppEstudo
//
//  Created by Diego Rodrigues on 29/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
        view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }


}

