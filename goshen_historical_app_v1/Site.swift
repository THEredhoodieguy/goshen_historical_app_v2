//
//  Site.swift
//  goshen_historical_app_v1
//
//  Created by Brian James Sutter on 3/7/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import UIKit

class Site {
    // MARK: Properties
    
    var name: String
    var type: Int
    var photo: UIImage?
    var shortText: String
    var longText: String
    
    // MARK: Types
    
    struct PropertyKey {
        static let nameKey = "name"
        static let typeKey = "type"
        static let photoKey = "photo"
        static let shortTextKey = "shortText"
        static let longTextKey = "longText"
    }
    
    // MARK: Initialization
    
    init?(name: String, type: Int, photo: UIImage?, shortText: String, longText: String) {
        // Initialize stored properties.
        self.name = name
        self.type = type
        self.photo = photo
        self.shortText = shortText
        self.longText = longText
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || shortText.isEmpty || longText.isEmpty {
            return nil
        }
    }
    // MARK: NSCoding
    
    
    
    
}




