//
//  PersistanceController.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 28/05/2021.
//

import CoreData

struct PersistanceController {
    static let shared = PersistanceController()
        
    static var preview: PersistanceController = {
        let result = PersistanceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        let audio = AudioEntity(context: viewContext)
        audio.title = "Theo, zet de motor maar aan"
        audio.audioLocation = "theo-motor.m4a"
        audio.desc = "brrrrrrrrrrrr 🦼"
        audio.image = "theo"
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(error), \(nsError.userInfo)")
        }
        
        return result
    }()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "ElSierd")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error)")
            }
        })
    }
    
    func saveContext() {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nsError = error as NSError
                fatalError("FAILED \(nsError.userInfo)")
            }
        }
    }
}

