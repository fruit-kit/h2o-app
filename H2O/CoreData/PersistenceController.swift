//
//  PersistenceController.swift
//  H2O
//
//  Created by Robert Kotrutsa on 12.04.26.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        self.container = NSPersistentContainer(name: "DrinkModel")
        
        container.loadPersistentStores { _ , error in
            if let error {
                fatalError("CoreData error: \(error)")
            }
        }
    }
}
