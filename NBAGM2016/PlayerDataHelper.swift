//
//  PlayerDataHelper.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerDataHelper: DataHelperProtocol {
    static let TABLE_NAME = "Players"
    static let table = Table(TABLE_NAME)
    static let playerID = Expression<Int64>("playerID")
    static let PlayerName = Expression<String>("playerName")
    static let From = Expression<Double>("From")
    static let To = Expression<Double>("To")
    static let Pos = Expression<String>("Pos")
    static let Hand = Expression<String>("Hand")
    static let Ht = Expression<String>("Ht")
    static let Wt = Expression<Int64>("Wt")
    static let BirthDate = Expression<String>("BirthDate")
    static let College = Expression<String>("College")
    static let Active = Expression<String>("Active")
    static let playerContractsID = Expression<Double>("playerContractsID")
    static let Rk = Expression<Double>("Rk")
    static let Tm = Expression<String>("Tm")
    static let s20162017 = Expression<String>("s20162017")
    static let s20172018 = Expression<String>("s20172018")
    static let s20182019 = Expression<String>("s20182019")
    static let s20192020 = Expression<String>("s20192020")
    static let s20202021 = Expression<String>("s20202021")
    static let s20212022 = Expression<String>("s20212022")
    static let SignedWith = Expression<String>("SignedWith")
    static let Guaranteed = Expression<String>("Guaranteed")
    typealias T = Player
    
    static func find(id: Int64) throws -> T? {
        guard let DB = SQLiteDataStore.sharedInstance.db else {
            throw DataAccessError.Datastore_Connection_Error
        }
        let query = table.filter(playerID == id)
        let items = try DB.prepare(query)
        for item in  items {
            return Player(playerID: item[playerID],
                          Active: item[Active],
                          PlayerName: item[PlayerName],
                          From: item[From],
                          To: item[To],
                          Pos: item[Pos],
                          Hand: item[Hand],
                          Ht: item[Ht],
                          Wt: item[Wt],
                          BirthDate: item[BirthDate],
                          College: item[College],
                          s20162017: item[s20162017],
                          s20172018: item[s20172018],
                          s20182019: item[s20182019],
                          s20192020: item[s20192020],
                          s20202021: item[s20202021],
                          s20212022: item[s20212022],
                          SignedWith: item[SignedWith],
                          Guaranteed: item[Guaranteed]
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
            retArray.append(Player(playerID: item[playerID],
                Active: item[Active],
                PlayerName: item[PlayerName],
                From: item[From],
                To: item[To],
                Pos: item[Pos],
                Hand: item[Hand],
                Ht: item[Ht],
                Wt: item[Wt],
                BirthDate: item[BirthDate],
                College: item[College],
                s20162017: item[s20162017],
                s20172018: item[s20172018],
                s20182019: item[s20182019],
                s20192020: item[s20192020],
                s20202021: item[s20202021],
                s20212022: item[s20212022],
                SignedWith: item[SignedWith],
                Guaranteed: item[Guaranteed]
                ))
            print("\(retArray)")

        }
        
        return retArray
    }
}














