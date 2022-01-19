//
//  ViewController.swift
//  TableViewApp
//
//  Created by Shilol Pesahov on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var info: UILabel!
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        info.text = "\(person.fullName)\nTel.:\(person.telefon)\nMail:\(person.mail)"
    }
    


}
