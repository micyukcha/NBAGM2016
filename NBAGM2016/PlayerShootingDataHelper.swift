//
//  PlayerDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerShootingDataHelper: DataHelperProtocol {
    static let TABLE_NAME = "PlayerShooting"
    static let table = Table(TABLE_NAME)
    static let playerSeasonShootingID = Expression<Int64>("playerSeasonShootingID")
    static let playerName = Expression<String>("playerName")
    static let Season = Expression<String>("Season")
    static let Age = Expression<Int64>("Age")
    static let Tm = Expression<String>("Tm")
    static let Lg = Expression<String>("Lg")
    static let Pos = Expression<String>("Pos")
    static let G = Expression<Int64>("G")
    static let MP = Expression<Int64>("MP")
    static let FGpct = Expression<String>("FGpct")
    static let Dist = Expression<String>("Dist")
    static let TwoPpct = Expression<String>("TwoPpct")
    static let dist0to3pct = Expression<String>("dist0to3pct")
    static let dist3to10pct = Expression<String>("dist3to10pct")
    static let dist10to16pct = Expression<String>("dist10to16pct")
    static let dist16to3Ppct = Expression<String>("dist16to3Ppct")
    static let dist3Ppct = Expression<String>("dist3Ppct")
    static let dist2PFGpct = Expression<String>("dist2PFGpct")
    static let dist0to3FGpct = Expression<String>("dist0to3FGpct")
    static let dist3to10FGpct = Expression<String>("dist3to10FGpct")
    static let dist10to16FGpct = Expression<String>("dist10to16FGpct")
    static let dist16to3PFGpct = Expression<String>("dist16to3PFGpct")
    static let dist3PFGpct = Expression<String>("dist3PFGpct")
    static let TwoPpctAst = Expression<String>("TwoPpctAst")
    static let DunkFGpct = Expression<String>("DunkFGpct")
    static let DunkMd = Expression<Int64>("DunkMd")
    static let ThrPpctAst = Expression<String>("ThrPpctAst")
    static let Cornerpct3PA = Expression<String>("Cornerpct3PA")
    static let Corner3Ppct = Expression<String>("Corner3Ppct")
    static let HeaveAtt = Expression<Int64>("HeaveAtt")
    static let HeaveMd = Expression<Int64>("HeaveMd")
    typealias T = PlayerShooting
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(playerSeasonShootingID == id)
        let items = try DB.prepare(query)
        for item in  items {
            return PlayerShooting(playerSeasonShootingID: item[playerSeasonShootingID],
                                  playerName: item[playerName],
                                  Season: item[Season],
                                  Age: item[Age],
                                  Tm: item[Tm],
                                  Lg: item[Lg],
                                  Pos: item[Pos],
                                  G: item[G],
                                  MP: item[MP],
                                  FGpct: item[FGpct],
                                  Dist: item[Dist],
                                  TwoPpct: item[TwoPpct],
                                  dist0to3pct: item[dist0to3pct],
                                  dist3to10pct: item[dist3to10pct],
                                  dist10to16pct: item[dist10to16pct],
                                  dist16to3Ppct: item[dist16to3Ppct],
                                  dist3Ppct: item[dist3Ppct],
                                  dist2PFGpct: item[dist2PFGpct],
                                  dist0to3FGpct: item[dist0to3FGpct],
                                  dist3to10FGpct: item[dist3to10FGpct],
                                  dist10to16FGpct: item[dist10to16FGpct],
                                  dist16to3PFGpct: item[dist16to3PFGpct],
                                  dist3PFGpct: item[dist3PFGpct],
                                  TwoPpctAst: item[TwoPpctAst],
                                  DunkFGpct: item[DunkFGpct],
                                  DunkMd: item[DunkMd],
                                  ThrPpctAst: item[ThrPpctAst],
                                  Cornerpct3PA: item[Cornerpct3PA],
                                  Corner3Ppct: item[Corner3Ppct],
                                  HeaveAtt: item[HeaveAtt],
                                  HeaveMd: item[HeaveMd]
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
            retArray.append(PlayerShooting(playerSeasonShootingID: item[playerSeasonShootingID],
                playerName: item[playerName],
                Season: item[Season],
                Age: item[Age],
                Tm: item[Tm],
                Lg: item[Lg],
                Pos: item[Pos],
                G: item[G],
                MP: item[MP],
                FGpct: item[FGpct],
                Dist: item[Dist],
                TwoPpct: item[TwoPpct],
                dist0to3pct: item[dist0to3pct],
                dist3to10pct: item[dist3to10pct],
                dist10to16pct: item[dist10to16pct],
                dist16to3Ppct: item[dist16to3Ppct],
                dist3Ppct: item[dist3Ppct],
                dist2PFGpct: item[dist2PFGpct],
                dist0to3FGpct: item[dist0to3FGpct],
                dist3to10FGpct: item[dist3to10FGpct],
                dist10to16FGpct: item[dist10to16FGpct],
                dist16to3PFGpct: item[dist16to3PFGpct],
                dist3PFGpct: item[dist3PFGpct],
                TwoPpctAst: item[TwoPpctAst],
                DunkFGpct: item[DunkFGpct],
                DunkMd: item[DunkMd],
                ThrPpctAst: item[ThrPpctAst],
                Cornerpct3PA: item[Cornerpct3PA],
                Corner3Ppct: item[Corner3Ppct],
                HeaveAtt: item[HeaveAtt],
                HeaveMd: item[HeaveMd]
                ))
        }
        
        return retArray
    }
}














