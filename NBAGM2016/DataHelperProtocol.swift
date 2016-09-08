//
//  DataHelperProtocol.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/8/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import Foundation
import SQLite


protocol DataHelperProtocol {
    associatedtype T
    //    static func createTable() throws -> Void
    //    static func insert(item: T) throws -> Int64
    //    static func delete(item: T) throws -> Void
    static func findAll() throws -> [T]?
}

