//
//  Teams.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite


class Team {
    var teamID: Int64?
    var abbreviation: String?
    var city: String?
    var nickName: String?
    
    init(teamID: Int64, abbreviation: String, city: String, nickName: String)
    {
        self.teamID = teamID
        self.abbreviation = abbreviation
        self.city = city
        self.nickName = nickName
    }
}
