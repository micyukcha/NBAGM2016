//
//  PlayerAdvPBP.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerAdvPBP {
    var playerSeasonAdvPBPID: Int64?
    var playerName: String?
    var Season: String?
    var Age: Int64?
    var Tm: String?
    var Lg: String?
    var Pos: String?
    var G: String?
    var MP: String?
    var PGpct: String?
    var SGpct: String?
    var SFpct: String?
    var PFpct: String?
    var Cpct: String?
    var OnCourt: Double?
    var OnOff: Double?
    var BadPass: Int64?
    var LostBall: Int64?
    var Other: Int64?
    var Shoot: Int64?
    var Block: String?
    var Offens: Int64?
    var Take: String?
    var PGA: Int64?
    var SfDrawn: Int64?
    var And1: Int64?
    var Blkd: Int64?
    
    init(playerSeasonAdvPBPID: Int64, playerName: String, Season: String, Age: Int64, Tm: String,
         Lg: String, Pos: String, G: String, MP: String, PGpct: String, SGpct: String, SFpct: String,
         PFpct: String, Cpct: String, OnCourt: Double, OnOff: Double, BadPass: Int64, LostBall: Int64,
         Other: Int64, Shoot: Int64, Block: String, Offens: Int64, Take: String, PGA: Int64, SfDrawn: Int64,
         And1: Int64, Blkd: Int64) {
        
        self.playerSeasonAdvPBPID = playerSeasonAdvPBPID
        self.playerName = playerName
        self.Season = Season
        self.Age = Age
        self.Tm = Tm
        self.Lg = Lg
        self.Pos = Pos
        self.G = G
        self.MP = MP
        self.PGpct = PGpct
        self.SGpct = SGpct
        self.SFpct = SFpct
        self.PFpct = PFpct
        self.Cpct = Cpct
        self.OnCourt = OnCourt
        self.OnOff = OnOff
        self.BadPass = BadPass
        self.LostBall = LostBall
        self.Other = Other
        self.Shoot = Shoot
        self.Block = Block
        self.Offens = Offens
        self.Take = Take
        self.PGA = PGA
        self.SfDrawn = SfDrawn
        self.And1 = And1
        self.Blkd = Blkd 
    }
}