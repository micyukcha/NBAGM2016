//
//  TeamStats.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class TeamTotal {
    var teamtotalID: Int64?
    var Season: String?
    var Lg: String?
    var Team: String?
    var W: Int64?
    var L: Int64?
    var WLpct: Double?
    var Finish: Int64?
    var SRS: Double?
    var Pace: Double?
    var RelPace: Double?
    var ORtg: Double?
    var RelORtg: Double?
    var DRtg: Double?
    var RelDRtg: Double?
    var Playoffs: String?
    var Coaches: String?
    var TopWS: String?
    
    init(teamtotalID: Int64, Season: String, Lg: String, Team: String, W: Int64, L: Int64, WLpct: Double, Finish: Int64, SRS: Double, Pace: Double, RelPace: Double, ORtg: Double, RelORtg: Double, DRtg: Double, RelDRtg: Double, Playoffs: String, Coaches: String, TopWS: String)
    
    {
        self.teamtotalID = teamtotalID
        self.Season = Season
        self.Lg = Lg
        self.Team = Team
        self.W = W
        self.L = L
        self.WLpct = WLpct
        self.Finish = Finish
        self.SRS = SRS
        self.Pace = Pace
        self.RelPace = RelPace
        self.ORtg = ORtg
        self.RelORtg = RelORtg
        self.DRtg = DRtg
        self.RelDRtg = RelDRtg
        self.Playoffs = Playoffs
        self.Coaches = Coaches
        self.TopWS = TopWS
    }
}