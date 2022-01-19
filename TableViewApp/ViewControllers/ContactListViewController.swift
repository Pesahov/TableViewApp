//
//  ContactListViewController.swift
//  TableViewApp
//
//  Created by Shilol Pesahov on 19/01/2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let contact = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0: content.text = contact.telefon
            content.image = UIImage (systemName: "phone")
        default: content.text = contact.mail
            content.image = UIImage (systemName: "mail")
        }
        
        cell.contentConfiguration = content


        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
