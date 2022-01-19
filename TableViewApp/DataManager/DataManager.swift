//
//  DataManager.swift
//  TableViewApp
//
//  Created by Shilol Pesahov on 19/01/2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    let names = ["Alex", "Jon", "Tim"]
    let surnames = ["Pesahov", "Travolta", "Kuk"]
    let telefons = ["00000", "11111", "22222"]
    let mails = ["one@gmail.com", "two@gmail.com", "three@gmail.com"]
    private init() {
        
    }
}
