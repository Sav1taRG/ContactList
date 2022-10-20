//
//  DataStore.swift
//  ContactList
//
//  Created by Roman Golubinko on 20.10.2022.
//

class DataStore {
    static let shared = DataStore()
    
    let firstNames = ["James", "Robert", "John", "Michael", "David",
                      "Mary", "Patricia", "Jennifer", "Linda", "Elizabeth"]
    
    let lastNames = ["Smith", "Johnson", "Williams", "Brown", "Jones",
                     "Garcia", "Miller", "Davis", "Rodriguez", "Martinez"]
    
    let phones = ["8 (492) 398-34-57", "8 (847) 842-58-29", " 8(278) 578-09-26",
                  "8 (750) 938-85-03", "8 (387) 564-83-23", "8 (214) 293-67-39",
                  "8 (458) 856-29-81", "8 (792) 092-83-29", "8 (921) 473-92-58",
                  "8 (902) 273-18-59"]
    
    let emails = ["sad@lfk.com", "wpeo@me.com", "goiejr@icloud.com",
                  "jfsdjkf@gmail.com", "tyruei@yandex.ru", "owqrih@icloud.com",
                  "a@a.com", "wioe@ya.com", "pikapika@rambler.ru", "yankee@us.gov"]
    private init() { }
}
