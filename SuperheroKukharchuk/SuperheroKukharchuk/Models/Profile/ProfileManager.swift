//
//  ProfileManager.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import Foundation
import CoreData

final class ProfileManager{
    
    static let shared = ProfileManager()
    
    var userProfile: Profile?
    
    lazy var mainContext: NSManagedObjectContext = {
        return self.storeageContainer.viewContext
    }()
    
    private lazy var storeageContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Profile")
        container.loadPersistentStores { storeDescription, error in
            guard error == nil else {
                print("Error: \(String(describing: error))")
                return
            }
        }
        return container
    }()
    
    private init(){}
    
    func createDefaultProfile(with sex: String){
        let entity = NSEntityDescription.entity(forEntityName: "Profile", in: mainContext)
        userProfile = Profile(entity: entity!, insertInto: mainContext)
        
        userProfile?.sex = sex
        
        saveProfile()
    }
    
    func saveProfile(){
        guard mainContext.hasChanges else {
            return
        }
        
        do{
            try mainContext.save()
        }catch let nsError as NSError {
            fatalError("Fatal error: \(nsError)")
        }
    }
    
    var count = 0
    
    func getRequserUser(){
        let profileFetchRequest: NSFetchRequest<Profile> = Profile.fetchRequest()
        
        do{
            let result = try mainContext.fetch(profileFetchRequest)
            
            if result.count > 0{
                userProfile = result.first
            } else {
                userProfile = nil
            }
        } catch let nsError as NSError {
            fatalError("Fatal error: \(nsError)")
        }
    }
}
