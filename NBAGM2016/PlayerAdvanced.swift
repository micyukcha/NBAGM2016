//
//  PlayerAdvanced.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class PlayerAdvanced {
    var playerSeasonAdvancedID: Int64?
    var playerName: String?
    var Season: String?
    var Age: Int64?
    var Tm: String?
    var Lg: String?
    var Pos: String?
    var G: Int64?
    var MP: Int64?
    var PER: String?
    var TSpct: String?
    var ThrPAr: String?
    var FTr: String?
    var ORBpct: String?
    var DRBpct: String?
    var TRBpct: String?
    var ASTpct: String?
    var STLpct: String?
    var BLKpct: String?
    var TOVpct: String?
    var USGpct: String?
    var OWS: Double?
    var DWS: Double?
    var WS: Double?
    var WS48: String?
    var OBPM: String?
    var DBPM: String?
    var BPM: String?
    var VORP: String?
    
    init(playerSeasonAdvancedID: Int64, playerName: String, Season: String, Age: Int64, Tm: String,
         Lg: String, Pos: String, G: Int64, MP: Int64, PER: String, TSpct: String, ThrPAr: String,
         FTr: String, ORBpct: String, DRBpct: String, TRBpct: String, ASTpct: String, STLpct: String,
         BLKpct: String, TOVpct: String, USGpct: String, OWS: Double, DWS: Double, WS: Double, WS48: String,
         OBPM: String, DBPM: String, BPM: String, VORP: String)
    {
        self.playerSeasonAdvancedID = playerSeasonAdvancedID
        self.playerName = playerName
        self.Season = Season
        self.Age = Age
        self.Tm = Tm
        self.Lg = Lg
        self.Pos = Pos
        self.G = G
        self.MP = MP
        self.PER = PER
        self.TSpct = TSpct
        self.ThrPAr = ThrPAr
        self.FTr = FTr
        self.ORBpct = ORBpct
        self.DRBpct = DRBpct
        self.TRBpct = TRBpct
        self.ASTpct = ASTpct
        self.STLpct = STLpct
        self.BLKpct = BLKpct
        self.TOVpct = TOVpct
        self.USGpct = USGpct
        self.OWS = OWS
        self.DWS = DWS
        self.WS = WS
        self.WS48 = WS48
        self.OBPM = OBPM
        self.DBPM = DBPM
        self.BPM = BPM
        self.VORP = VORP
    }
}
