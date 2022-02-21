//
//  Profile+CoreDataProperties.swift
//  SuperheroKukharchuk
//
//  Created by Марія Кухарчук on 21.02.2022.
//

import Foundation
import CoreData

extension Profile : Identifiable{
    @NSManaged public var sex: String?
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }   
}
