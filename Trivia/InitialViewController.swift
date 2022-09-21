//
//  InitialViewController.swift
//  Trivia
//
//  Created by Jefferson Naranjo rodríguez on 19/09/22.
//

import UIKit

class InitialViewController: UIViewController {


    @IBOutlet weak var textfieldUser: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupViewControllers()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    


    @IBAction func SignIn(_ sender: UIButton) {
        if let userName = textfieldUser.text, !userName.isEmpty {
            presentCategoriesController()
        }else{
            presentNoUserNameAlert()
        }
    }
    
    private func presentNoUserNameAlert() {
        let alert = UIAlertController(title: "Alert", message: "Please, enter to username correct", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func presentCategoriesController() {
        let categoriesViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: categoriesViewController)
        navigationController.modalPresentationStyle = .overFullScreen
        self.present(navigationController, animated: true)
    }
}
