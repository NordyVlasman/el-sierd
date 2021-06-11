//
//  AudioEntity+CoreDataProperties.swift
//  ElSierd
//
//  Created by Nordy Vlasman on 04/06/2021.
//
//

import Foundation
import CoreData


extension AudioEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AudioEntity> {
        return NSFetchRequest<AudioEntity>(entityName: "AudioEntity")
    }

    @NSManaged public var title: String?
    @NSManaged public var desc: String?
    @NSManaged public var audioLocation: String?
    @NSManaged public var image: String?

}

extension AudioEntity : Identifiable {

}
