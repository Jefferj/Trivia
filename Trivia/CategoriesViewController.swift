//
//  CategoriesViewController.swift
//  Trivia
//
//  Created by Jefferson Naranjo rodríguez on 21/09/22.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //let categoriesViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        //self.present(categoriesViewController, animated: true, completion: nil)
        tableView.dataSource = self
        tableView.delegate = self
        getCategories()

    }
    
    private func getCategories() {
        tableView.reloadData()
    }
}

extension CategoriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.row {
        case 0: cell.textLabel?.text = "Primera categoria"
        default: cell.textLabel?.text = "Segunda categoria"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
}

extension CategoriesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Acción cuando el usuario toca la celda")
    }
}
