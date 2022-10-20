//
//  ViewController.swift
//  ContactList
//
//  Created by Roman Golubinko on 19.10.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
        prepareViewControllers()
    }
    
    func prepareViewControllers() {
        let persons = Person.getPersons()
        guard let contactsListVC = viewControllers?.first as? ContactsTableViewController else { return }
        guard let contactsSecrionsVC = viewControllers?.last as? ContactsSectionTableViewController else { return }
        contactsListVC.persons = persons
        contactsSecrionsVC.persons = persons
    }
}
