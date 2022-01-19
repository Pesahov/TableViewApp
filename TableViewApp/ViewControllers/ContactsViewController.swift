//
//  ContactsViewController.swift
//  TableViewApp
//
//  Created by Shilol Pesahov on 19/01/2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content


        return cell
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? ViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let info = persons[indexPath.row]
        infoVC.person = info
    }
    

}
