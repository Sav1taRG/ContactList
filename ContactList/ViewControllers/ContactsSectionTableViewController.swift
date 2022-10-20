//
//  ContactsSectionTableViewController.swift
//  ContactList
//
//  Created by Roman Golubinko on 19.10.2022.
//

import UIKit

class ContactsSectionTableViewController: UITableViewController {
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone.fill")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "paperplane")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
