//
//  Model.swift
//  ContactList
//
//  Created by Roman Golubinko on 19.10.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        let ds = DataStore.shared
        var persons: [Person] = []
        
        let firstNames = ds.firstNames.shuffled()
        let lastNames = ds.lastNames.shuffled()
        let phoneNumbers = ds.phones.shuffled()
        let emails = ds.emails.shuffled()
        
        let iterationsNumber = min(
            firstNames.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationsNumber {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
