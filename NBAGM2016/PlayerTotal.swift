//
//  PlayerTotal.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerTotal {
    var playerSeasonTotalsID: Int64?
    var playerName: String?
    var Season: String?
    var Age: String?
    var Tm: String?
    var Lg: String?
    var Pos: String?
    var G: String?
    var GS: String?
    var MP: String?
    var FG: String?
    var FGA: String?
    var FGpct: String?
    var ThrP: String?
    var ThrPA: String?
    var ThrPpct: String?
    var TwoP: String?
    var TwoPA: String?
    var TwoPpct: String?
    var eFGpct: String?
    var FT: String?
    var FTA: String?
    var FTpct: String?
    var ORB: String?
    var DRB: String?
    var TRB: String?
    var AST: String?
    var STL: String?
    var BLK: String?
    var TOV: String?
    var PF: String?
    var PTS: String?
    
    init(playerSeasonTotalsID: Int64, playerName: String, Season: String, Age: String, Tm: String,
         Lg: String, Pos: String, G: String, GS: String, MP: String, FG: String, FGA: String,
         FGpct: String, ThrP: String, ThrPA: String, ThrPpct: String, TwoP: String, TwoPA: String,
         TwoPpct: String, eFGpct: String, FT: String, FTA: String, FTpct: String, ORB: String, DRB: String,
         TRB: String, AST: String, STL: String, BLK: String, TOV: String, PF: String, PTS: String)
    {
        self.playerSeasonTotalsID = playerSeasonTotalsID
        self.playerName = playerName
        self.Season = Season
        self.Age = Age
        self.Tm = Tm
        self.Lg = Lg
        self.Pos = Pos
        self.G = G
        self.GS = GS
        self.MP = MP
        self.FG = FG
        self.FGA = FGA
        self.FGpct = FGpct
        self.ThrP = ThrP
        self.ThrPA = ThrPA
        self.ThrPpct = ThrPpct
        self.TwoP = TwoP
        self.TwoPA = TwoPA
        self.TwoPpct = TwoPpct
        self.eFGpct = eFGpct
        self.FT = FT
        self.FTA = FTA
        self.FTpct = FTpct
        self.ORB = ORB
        self.DRB = DRB
        self.TRB = TRB
        self.AST = AST
        self.STL = STL
        self.BLK = BLK
        self.TOV = TOV
        self.PF = PF
        self.PTS = PTS
    }
}
