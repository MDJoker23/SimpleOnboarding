//
//  ViewController.swift
//  Onboarding
//
//  Created by Imac on 04.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser() {
            let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeViewController
            
            vc.modalPresentationStyle = .fullScreen
            
            present(vc, animated: true)
         }
    }


}

class Core {
    
    static let shared = Core()
    
    func isNewUser() -> Bool {
        
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    func setIsNotNewUser() {
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}

