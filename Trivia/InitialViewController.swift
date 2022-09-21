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

        
    }


    @IBAction func SignIn(_ sender: UIButton) {
        if textfieldUser.hasText {
            let vc = QuestionViewController(
            nibName: "QuestionViewController",
            bundle: nil)
            self.present(vc, animated: true)
        }else{
            print("Please enter a valid username")
        }
        
    }
    

}
