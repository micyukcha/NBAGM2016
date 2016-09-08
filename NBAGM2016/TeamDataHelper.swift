//
//  TeamStatsDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite


class TeamDataHelper: DataHelperProtocol {
    
    static let TABLE_NAME = "Team"
    static let table = Table(TABLE_NAME)
    
    static let teamID = Expression<Int64>("teamID")
    static let abbreviation = Expression<String>("abbreviation")
    static let city = Expression<String>("city")
    static let nickName = Expression<String>("nickName")
    
    typealias T = Team
    
    //    static func createTable() throws {
    //        guard let DB = SQLiteDataStore.sharedInstance.BBDB else {
    //            throw DataAccessError.Datastore_Connection_Error
    //        }
    //        do {
    //            let _ = try DB.run( table.create(ifNotExists: true) {t in
    //                t.column(teamID, primaryKey: true)
    //                t.column(city)
    //                t.column(nickName)
    //                t.column(abbreviation)
    //                })
    //
    //        } catch _ {
    //            print("Database \(TABLE_NAME) exists.")
    //        }
    //    }
    //
    //    static func insert(item: T) throws -> Int64 {
    //        guard let DB = SQLiteDataStore.sharedInstance.BBDB else {
    //            throw DataAccessError.Datastore_Connection_Error
    //        }
    //        if (item.teamID != nil && item.city != nil && item.nickName != nil && item.abbreviation != nil) {
    //            let insert = table.insert(teamID <- item.teamID!, city <- item.city!, nickName <- item.nickName!, abbreviation <- item.abbreviation!)
    //            do {
    //                let rowId = try DB.run(insert)
    //                guard rowId > 0 else {
    //                    throw DataAccessError.Insert_Error
    //                }
    //                return rowId
    //            } catch _ {
    //                throw DataAccessError.Insert_Error
    //            }
    //        }
    //        throw DataAccessError.Nil_In_Data
    //
    //    }
    //
    //    static func delete (item: T) throws -> Void {
    //        guard let DB = SQLiteDataStore.sharedInstance.BBDB else {
    //            throw DataAccessError.Datastore_Connection_Error
    //        }
    //        if let id = item.teamID {
    //            let query = table.filter(teamID == id)
    //            do {
    //                let tmp = try DB.run(query.delete())
    //                guard tmp == 1 else {
    //                    throw DataAccessError.Delete_Error
    //                }
    //            } catch _ {
    //                throw DataAccessError.Delete_Error
    //            }
    //        }
    //    }
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(teamID == id)
        let items = try DB.prepare(query)
        for item in  items {
            return Team(teamID: item[teamID],
                        abbreviation: item[abbreviation],
                        city: item[city],
                        nickName: item[nickName]
            )
        }
        
        return nil
        
    }
    
    static func findAll() throws -> [T]? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        var retArray = [T]()
        let items = try DB.prepare(table)
        for item in items {
            retArray.append(Team(teamID: item[teamID],
                abbreviation: item[abbreviation],
                city: item[city],
                nickName: item[nickName]
                )
            )
        }
        
        return retArray
        
    }
}
