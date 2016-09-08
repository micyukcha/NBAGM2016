//
//  SQLiteDataStore.swift
//  
//
//  Created by Michael Chang on 8/31/16.
//
//

import Foundation
import SQLite

enum DataAccessError: ErrorType {
    case Datastore_Connection_Error
    case Insert_Error
    case Delete_Error
    case Search_Error
    case Nil_In_Data
}


class SQLiteDataStore {
    static let sharedInstance = SQLiteDataStore()
    let db: Connection?
    
    private init() {
        var path = "nbaDB2.sqlite"
        
        if let dirs: [NSString] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,
            NSSearchPathDomainMask.AllDomainsMask, true) as [NSString] {
        
            let dir = dirs[0]
            path = dir.stringByAppendingString("/nbaDB2.sqlite")
            print("path for DB: \(path)")
        }
    
        do {
            db = try Connection(path)
            //print("\(BBDB)")
        } catch _ {
            db = nil
        }
    }
    
//    func createTables() throws {
//        do {
//            try TeamDataHelper.createTable()
//            try PlayerBioDataHelper.createTable()
//        } catch {
//            throw DataAccessError.Datastore_Connection_Error
//        }
//    }
}