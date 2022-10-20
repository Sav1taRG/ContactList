//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Roman Golubinko on 19.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var phoneLB: UILabel!
    @IBOutlet var emailLB: UILabel!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLB.text = "Phone: \(person.phoneNumber)"
        emailLB.text = "Email: \(person.email)"
        title = person.fullName
    }
}
