//
//  PlayerDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerPer100PossDataHelper: DataHelperProtocol {
    static let TABLE_NAME = "PlayerPer100Poss"
    static let table = Table(TABLE_NAME)
    static let playerSeasonPer100PossID = Expression<Int64>("playerSeasonPer100PossID")
    static let playerName = Expression<String>("playerName")
    static let Season = Expression<String>("Season")
    static let Age = Expression<Int64>("Age")
    static let Tm = Expression<String>("Tm")
    static let Lg = Expression<String>("Lg")
    static let Pos = Expression<String>("Pos")
    static let G = Expression<Int64>("G")
    static let GS = Expression<String>("GS")
    static let MP = Expression<Int64>("MP")
    static let FG = Expression<String>("FG")
    static let FGA = Expression<String>("FGA")
    static let FGpct = Expression<String>("FGpct")
    static let ThrP = Expression<String>("ThrP")
    static let ThrPA = Expression<String>("ThrPA")
    static let ThrPpct = Expression<String>("ThrPpct")
    static let TwoP = Expression<String>("TwoP")
    static let TwoPA = Expression<String>("TwoPA")
    static let TwoPpct = Expression<String>("TwoPpct")
    static let FT = Expression<String>("FT")
    static let FTA = Expression<String>("FTA")
    static let FTpct = Expression<String>("FTpct")
    static let ORB = Expression<String>("ORB")
    static let DRB = Expression<String>("DRB")
    static let TRB = Expression<String>("TRB")
    static let AST = Expression<String>("AST")
    static let STL = Expression<String>("STL")
    static let BLK = Expression<String>("BLK")
    static let TOV = Expression<String>("TOV")
    static let PF = Expression<String>("PF")
    static let PTS = Expression<String>("PTS")
    static let ORtg = Expression<String>("ORtg")
    static let DRtg = Expression<String>("DRtg")
    typealias T = PlayerPer100Poss
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(playerSeasonPer100PossID == id)
        let items = try DB.prepare(query)
        for item in  items {
            print("\(item)")
            return PlayerPer100Poss(playerSeasonPer100PossID: item[playerSeasonPer100PossID],
                                playerName: item[playerName],
                                Season: item[Season],
                                Age: item[Age],
                                Tm: item[Tm],
                                Lg: item[Lg],
                                Pos: item[Pos],
                                G: item[G],
                                GS: item[GS],
                                MP: item[MP],
                                FG: item[FG],
                                FGA: item[FGA],
                                FGpct: item[FGpct],
                                ThrP: item[ThrP],
                                ThrPA: item[ThrPA],
                                ThrPpct: item[ThrPpct],
                                TwoP: item[TwoP],
                                TwoPA: item[TwoPA],
                                TwoPpct: item[TwoPpct],
                                FT: item[FT],
                                FTA: item[FTA],
                                FTpct: item[FTpct],
                                ORB: item[ORB],
                                DRB: item[DRB],
                                TRB: item[TRB],
                                AST: item[AST],
                                STL: item[STL],
                                BLK: item[BLK],
                                TOV: item[TOV],
                                PF: item[PF],
                                PTS: item[PTS],
                                ORtg: item[ORtg],
                                DRtg: item[DRtg]
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
            print("\(item)")
            retArray.append(PlayerPer100Poss(playerSeasonPer100PossID: item[playerSeasonPer100PossID],
                playerName: item[playerName],
                Season: item[Season],
                Age: item[Age],
                Tm: item[Tm],
                Lg: item[Lg],
                Pos: item[Pos],
                G: item[G],
                GS: item[GS],
                MP: item[MP],
                FG: item[FG],
                FGA: item[FGA],
                FGpct: item[FGpct],
                ThrP: item[ThrP],
                ThrPA: item[ThrPA],
                ThrPpct: item[ThrPpct],
                TwoP: item[TwoP],
                TwoPA: item[TwoPA],
                TwoPpct: item[TwoPpct],
                FT: item[FT],
                FTA: item[FTA],
                FTpct: item[FTpct],
                ORB: item[ORB],
                DRB: item[DRB],
                TRB: item[TRB],
                AST: item[AST],
                STL: item[STL],
                BLK: item[BLK],
                TOV: item[TOV],
                PF: item[PF],
                PTS: item[PTS],
                ORtg: item[ORtg],
                DRtg: item[DRtg]
                ))
        }
        
        return retArray
    }
}














