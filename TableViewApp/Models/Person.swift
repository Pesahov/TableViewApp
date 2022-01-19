//
//  Person.swift
//  TableViewApp
//
//  Created by Shilol Pesahov on 19/01/2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let telefon: String
    let mail: String
    
    var fullName: String {"\(name) \(surname)"}
}

extension Person {
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let telefons = DataManager.shared.telefons.shuffled()
        let mails = DataManager.shared.mails.shuffled()
        let iterrationCount = min(names.count, surnames.count,telefons.count,mails.count)
        for index in 0..<iterrationCount {
            let person = Person (name: names[index], surname: surnames[index], telefon: telefons[index], mail: mails[index])
            persons.append(person)
        }
        return persons
    }
}
