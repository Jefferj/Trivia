//
//  InitialViewController.swift
//  Trivia
//
//  Created by Jefferson Naranjo rodríguez on 19/09/22.
//

import UIKit

class InitialViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    
    @IBAction func SignIn(_ sender: UIButton) {
            if let userName = nameTextField.text, !userName.isEmpty {
                presentTabBarController()
            }else{
                presentNoUsernameAlert()
            }
        }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func presentNoUsernameAlert() {
        let alert = UIAlertController(title: "Username required", message: "Please fill the username field to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in NSLog("The \"OK\" alert occured.") }))
        self.present(alert, animated: true)
    }
    
    func presentNotAcceptedTermsAlert() {
        let alert = UIAlertController(title: "Terms and Conditions", message: "Please accept the terms and conditions to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in NSLog("The \"Terms OK\" alert occured.")}))
        self.present(alert, animated: true)
    }
    
    func presentTabBarController() {
        let tabBarController = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        tabBarController.modalPresentationStyle = .overFullScreen
        self.present(tabBarController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

}
