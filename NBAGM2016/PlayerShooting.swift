//
//  PlayerShooting.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerShooting {
    var playerSeasonShootingID: Int64?
    var playerName: String?
    var Season: String?
    var Age: Int64?
    var Tm: String?
    var Lg: String?
    var Pos: String?
    var G: Int64?
    var MP: Int64?
    var FGpct: String?
    var Dist: String?
    var TwoPpct: String?
    var dist0to3pct: String?
    var dist3to10pct: String?
    var dist10to16pct: String?
    var dist16to3Ppct: String?
    var dist3Ppct: String?
    var dist2PFGpct: String?
    var dist0to3FGpct: String?
    var dist3to10FGpct: String?
    var dist10to16FGpct: String?
    var dist16to3PFGpct: String?
    var dist3PFGpct: String?
    var TwoPpctAst: String?
    var DunkFGpct: String?
    var DunkMd: Int64?
    var ThrPpctAst: String?
    var Cornerpct3PA: String?
    var Corner3Ppct: String?
    var HeaveAtt: Int64?
    var HeaveMd: Int64?
    
    init(playerSeasonShootingID: Int64, playerName: String, Season: String, Age: Int64, Tm: String,
         Lg: String, Pos: String, G: Int64, MP: Int64, FGpct: String, Dist: String, TwoPpct: String,
         dist0to3pct: String, dist3to10pct: String, dist10to16pct: String, dist16to3Ppct: String,
         dist3Ppct: String, dist2PFGpct: String, dist0to3FGpct: String, dist3to10FGpct: String,
         dist10to16FGpct: String, dist16to3PFGpct: String, dist3PFGpct: String, TwoPpctAst: String,
         DunkFGpct: String, DunkMd: Int64, ThrPpctAst: String, Cornerpct3PA: String, Corner3Ppct: String,
         HeaveAtt: Int64, HeaveMd: Int64)
    {
        self.playerSeasonShootingID = playerSeasonShootingID
        self.playerName = playerName
        self.Season = Season
        self.Age = Age
        self.Tm = Tm
        self.Lg = Lg
        self.Pos = Pos
        self.G = G
        self.MP = MP
        self.FGpct = FGpct
        self.Dist = Dist
        self.TwoPpct = TwoPpct
        self.dist0to3pct = dist0to3pct
        self.dist3to10pct = dist3to10pct
        self.dist10to16pct = dist10to16pct
        self.dist16to3Ppct = dist16to3Ppct
        self.dist3Ppct = dist3Ppct
        self.dist2PFGpct = dist2PFGpct
        self.dist0to3FGpct = dist0to3FGpct
        self.dist3to10FGpct = dist3to10FGpct
        self.dist10to16FGpct = dist10to16FGpct
        self.dist16to3PFGpct = dist16to3PFGpct
        self.dist3PFGpct = dist3PFGpct
        self.TwoPpctAst = TwoPpctAst
        self.DunkFGpct = DunkFGpct
        self.DunkMd = DunkMd
        self.ThrPpctAst = ThrPpctAst
        self.Cornerpct3PA = Cornerpct3PA
        self.Corner3Ppct = Corner3Ppct
        self.HeaveAtt = HeaveAtt
        self.HeaveMd = HeaveMd
    }
}

