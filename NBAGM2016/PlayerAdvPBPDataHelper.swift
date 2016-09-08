//
//  PlayerDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerAdvPBPDataHelper: DataHelperProtocol {
    static let TABLE_NAME = "PlayerAdvPBP"
    static let table = Table(TABLE_NAME)
    static let playerSeasonAdvPBPID = Expression<Int64>("playerSeasonAdvPBPID")
    static let playerName = Expression<String>("playerName")
    static let Season = Expression<String>("Season")
    static let Age = Expression<Int64>("Age")
    static let Tm = Expression<String>("Tm")
    static let Lg = Expression<String>("Lg")
    static let Pos = Expression<String>("Pos")
    static let G = Expression<String>("G")
    static let MP = Expression<String>("MP")
    static let PGpct = Expression<String>("PGpct")
    static let SGpct = Expression<String>("SGpct")
    static let SFpct = Expression<String>("SFpct")
    static let PFpct = Expression<String>("PFpct")
    static let Cpct = Expression<String>("Cpct")
    static let OnCourt = Expression<Double>("OnCourt")
    static let OnOff = Expression<Double>("OnOff")
    static let BadPass = Expression<Int64>("BadPass")
    static let LostBall = Expression<Int64>("LostBall")
    static let Other = Expression<Int64>("Other")
    static let Shoot = Expression<Int64>("Shoot")
    static let Block = Expression<String>("Block")
    static let Offens = Expression<Int64>("Offens")
    static let Take = Expression<String>("Take")
    static let PGA = Expression<Int64>("PGA")
    static let SfDrawn = Expression<Int64>("SfDrawn")
    static let And1 = Expression<Int64>("And1")
    static let Blkd = Expression<Int64>("Blkd")
    typealias T = PlayerAdvPBP
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(playerSeasonAdvPBPID == id)
        let items = try DB.prepare(query)
        for item in  items {
            return PlayerAdvPBP(playerSeasonAdvPBPID: item[playerSeasonAdvPBPID],
                playerName: item[playerName],
                Season: item[Season],
                Age: item[Age],
                Tm: item[Tm],
                Lg: item[Lg],
                Pos: item[Pos],
                G: item[G],
                MP: item[MP],
                PGpct: item[PGpct],
                SGpct: item[SGpct],
                SFpct: item[SFpct],
                PFpct: item[PFpct],
                Cpct: item[Cpct],
                OnCourt: item[OnCourt],
                OnOff: item[OnOff],
                BadPass: item[BadPass],
                LostBall: item[LostBall],
                Other: item[Other],
                Shoot: item[Shoot],
                Block: item[Block],
                Offens: item[Offens],
                Take: item[Take],
                PGA: item[PGA],
                SfDrawn: item[SfDrawn],
                And1: item[And1],
                Blkd: item[Blkd]
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
            retArray.append(PlayerAdvPBP(playerSeasonAdvPBPID: item[playerSeasonAdvPBPID],
                playerName: item[playerName],
                Season: item[Season],
                Age: item[Age],
                Tm: item[Tm],
                Lg: item[Lg],
                Pos: item[Pos],
                G: item[G],
                MP: item[MP],
                PGpct: item[PGpct],
                SGpct: item[SGpct],
                SFpct: item[SFpct],
                PFpct: item[PFpct],
                Cpct: item[Cpct],
                OnCourt: item[OnCourt],
                OnOff: item[OnOff],
                BadPass: item[BadPass],
                LostBall: item[LostBall],
                Other: item[Other],
                Shoot: item[Shoot],
                Block: item[Block],
                Offens: item[Offens],
                Take: item[Take],
                PGA: item[PGA],
                SfDrawn: item[SfDrawn],
                And1: item[And1],
                Blkd: item[Blkd]))
        }
        
        return retArray
    }
}














