//
//  PlayerDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerAdvancedDataHelper: DataHelperProtocol {
    static let TABLE_NAME = "PlayerAdvanced"
    static let table = Table(TABLE_NAME)
    static let playerSeasonAdvancedID = Expression<Int64>("playerSeasonAdvancedID")
    static let playerName = Expression<String>("playerName")
    static let Season = Expression<String>("Season")
    static let Age = Expression<Int64>("Age")
    static let Tm = Expression<String>("Tm")
    static let Lg = Expression<String>("Lg")
    static let Pos = Expression<String>("Pos")
    static let G = Expression<Int64>("G")
    static let MP = Expression<Int64>("MP")
    static let PER = Expression<String>("PER")
    static let TSpct = Expression<String>("TSpct")
    static let ThrPAr = Expression<String>("ThrPAr")
    static let FTr = Expression<String>("FTr")
    static let ORBpct = Expression<String>("ORBpct")
    static let DRBpct = Expression<String>("DRBpct")
    static let TRBpct = Expression<String>("TRBpct")
    static let ASTpct = Expression<String>("ASTpct")
    static let STLpct = Expression<String>("STLpct")
    static let BLKpct = Expression<String>("BLKpct")
    static let TOVpct = Expression<String>("TOVpct")
    static let USGpct = Expression<String>("USGpct")
    static let OWS = Expression<Double>("OWS")
    static let DWS = Expression<Double>("DWS")
    static let WS = Expression<Double>("WS")
    static let WS48 = Expression<String>("WS48")
    static let OBPM = Expression<String>("OBPM")
    static let DBPM = Expression<String>("DBPM")
    static let BPM = Expression<String>("BPM")
    static let VORP = Expression<String>("VORP")
    typealias T = PlayerAdvanced
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(playerSeasonAdvancedID == id)
        let items = try DB.prepare(query)
        for item in  items {
            return PlayerAdvanced(playerSeasonAdvancedID: item[playerSeasonAdvancedID],
                                  playerName: item[playerName],
                                  Season: item[Season],
                                  Age: item[Age],
                                  Tm: item[Tm],
                                  Lg: item[Lg],
                                  Pos: item[Pos],
                                  G: item[G],
                                  MP: item[MP],
                                  PER: item[PER],
                                  TSpct: item[TSpct],
                                  ThrPAr: item[ThrPAr],
                                  FTr: item[FTr],
                                  ORBpct: item[ORBpct],
                                  DRBpct: item[DRBpct],
                                  TRBpct: item[TRBpct],
                                  ASTpct: item[ASTpct],
                                  STLpct: item[STLpct],
                                  BLKpct: item[BLKpct],
                                  TOVpct: item[TOVpct],
                                  USGpct: item[USGpct],
                                  OWS: item[OWS],
                                  DWS: item[DWS],
                                  WS: item[WS],
                                  WS48: item[WS48],
                                  OBPM: item[OBPM],
                                  DBPM: item[DBPM],
                                  BPM: item[BPM],
                                  VORP: item[VORP]
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
            retArray.append(PlayerAdvanced(playerSeasonAdvancedID: item[playerSeasonAdvancedID],
                playerName: item[playerName],
                Season: item[Season],
                Age: item[Age],
                Tm: item[Tm],
                Lg: item[Lg],
                Pos: item[Pos],
                G: item[G],
                MP: item[MP],
                PER: item[PER],
                TSpct: item[TSpct],
                ThrPAr: item[ThrPAr],
                FTr: item[FTr],
                ORBpct: item[ORBpct],
                DRBpct: item[DRBpct],
                TRBpct: item[TRBpct],
                ASTpct: item[ASTpct],
                STLpct: item[STLpct],
                BLKpct: item[BLKpct],
                TOVpct: item[TOVpct],
                USGpct: item[USGpct],
                OWS: item[OWS],
                DWS: item[DWS],
                WS: item[WS],
                WS48: item[WS48],
                OBPM: item[OBPM],
                DBPM: item[DBPM],
                BPM: item[BPM],
                VORP: item[VORP]
                ))
        }
        
        return retArray
    }
}














