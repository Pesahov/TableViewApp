//
//  MainViewController.swift
//  TableViewApp
//
//  Created by Shilol Pesahov on 19/01/2022.
//

import UIKit

class MainViewController: UITabBarController {
    let persons = Person.getPersonList()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeViewControllers()


    }
    
    private func changeViewControllers() {
        guard let viewContrellers = self.viewControllers else {return}
        for contreller in viewContrellers {
            if let navVC = contreller as? UINavigationController {
                if let contactsVC = navVC.topViewController as? ContactsViewController {
                    contactsVC.persons = persons
                }
                else if let contactListVC = navVC.topViewController as? ContactListViewController {
                    contactListVC.persons = persons
                }
                    
            }
        }
    }


}
