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
        let contactsListVC = viewControllers?.first as! ContactsTableViewController
        let contactsSecrionsVC = viewControllers?.last as! ContactsSectionTableViewController
        contactsListVC.persons = persons
        contactsSecrionsVC.persons = persons
    }
}
