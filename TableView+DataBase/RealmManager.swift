//
//  RealmManager.swift
//  TableView+DataBase
//
//  Created by Alex R. on 18/11/2019.
//  Copyright © 2019 Alex R. All rights reserved.
//

import RealmSwift

let realm = try? Realm()

class StorageManager {
    
    static func saveObject(_ car: Car) {
        try? realm?.write {
            realm?.add(car)
        }
    }
    
    static func deleteObject(_ car: Car) {
        
        try? realm?.write {
            realm?.delete(car)
        }
    }    
}
