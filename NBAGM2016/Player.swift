//
//  Players.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite

class Player {
    var playerID: Int64?
    var Active: String?
    var PlayerName: String?
    var From: Double?
    var To: Double?
    var Pos: String?
    var Hand: String?
    var Ht: String?
    var Wt: Int64?
    var BirthDate: String?
    var College: String?
    var s20162017: String?
    var s20172018: String?
    var s20182019: String?
    var s20192020: String?
    var s20202021: String?
    var s20212022: String?
    var SignedWith: String?
    var Guaranteed: String?
    
    init(playerID: Int64, Active: String, PlayerName: String, From: Double, To: Double, Pos: String, Hand: String, Ht: String,
         Wt: Int64, BirthDate: String, College: String, s20162017: String, s20172018: String, s20182019: String,
         s20192020: String, s20202021: String, s20212022: String, SignedWith: String, Guaranteed: String)
    {
        self.playerID = playerID
        self.Active = Active
        self.PlayerName = PlayerName
        self.From = From
        self.To = To
        self.Pos = Pos
        self.Hand = Hand
        self.Ht = Ht
        self.Wt = Wt
        self.BirthDate = BirthDate
        self.College = College
        self.s20162017 = s20162017
        self.s20172018 = s20172018
        self.s20182019 = s20182019
        self.s20192020 = s20192020
        self.s20202021 = s20202021
        self.s20212022 = s20212022
        self.SignedWith = SignedWith
        self.Guaranteed = Guaranteed
    }
}


enum Positions: String {
    case PointGuard = "Point Guard"
    case ShootingGUard = "Shooting Guard"
    case SmallForward = "Small Forward"
    case PowerForward = "Power Forward"
    case CenterForward = "Center"
}

