//
//  PlayerDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class TeamTotalDataHelper: DataHelperProtocol {
    
    static let TABLE_NAME = "TeamTotal"
    static let table = Table(TABLE_NAME)
    
    static let teamtotalID = Expression<Int64>("teamtotalID")
    static let Season = Expression<String>("Season")
    static let Lg = Expression<String>("Lg")
    static let Team = Expression<String>("Team")
    static let W = Expression<Int64>("W")
    static let L = Expression<Int64>("L")
    static let WLpct = Expression<Double>("WLpct")
    static let Finish = Expression<Int64>("Finish")
    static let SRS = Expression<Double>("SRS")
    static let Pace = Expression<Double>("Pace")
    static let RelPace = Expression<Double>("RelPace")
    static let ORtg = Expression<Double>("ORtg")
    static let RelORtg = Expression<Double>("RelORtg")
    static let DRtg = Expression<Double>("DRtg")
    static let RelDRtg = Expression<Double>("RelDRtg")
    static let Playoffs = Expression<String>("Playoffs")
    static let Coaches = Expression<String>("Coaches")
    static let TopWS = Expression<String>("TopWS")

    typealias T = TeamTotal
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(teamtotalID == id)
        let items = try DB.prepare(query)
        for item in  items {
            return TeamTotal(teamtotalID: item[teamtotalID],
                             Season: item[Season],
                             Lg: item[Lg],
                             Team: item[Team],
                             W: item[W],
                             L: item[L],
                             WLpct: item[WLpct],
                             Finish: item[Finish],
                             SRS: item[SRS],
                             Pace: item[Pace],
                             RelPace: item[RelPace],
                             ORtg: item[ORtg],
                             RelORtg: item[RelORtg],
                             DRtg: item[DRtg],
                             RelDRtg: item[RelDRtg],
                             Playoffs: item[Playoffs],
                             Coaches: item[Coaches],
                             TopWS: item[TopWS]
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
            retArray.append(TeamTotal(teamtotalID: item[teamtotalID],
                Season: item[Season],
                Lg: item[Lg],
                Team: item[Team],
                W: item[W],
                L: item[L],
                WLpct: item[WLpct],
                Finish: item[Finish],
                SRS: item[SRS],
                Pace: item[Pace],
                RelPace: item[RelPace],
                ORtg: item[ORtg],
                RelORtg: item[RelORtg],
                DRtg: item[DRtg],
                RelDRtg: item[RelDRtg],
                Playoffs: item[Playoffs],
                Coaches: item[Coaches],
                TopWS: item[TopWS]
                ))
        }
        
        return retArray
    }
}













