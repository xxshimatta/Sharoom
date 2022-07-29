//
//  DataController.swift
//  NanoChallenge2
//
//  Created by Jeffrey Clay Setiawan on 27/07/22.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "DataCore")
    
    init(){
        container.loadPersistentStores{
            description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
