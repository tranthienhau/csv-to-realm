//
//  ElectionStateRecord.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import RealmSwift

class ElectionStateRecord: Object {
    @objc dynamic var _id = ObjectId.generate()
    @objc dynamic var party_simplified: String?
    @objc dynamic var party_detailed: String?
    @objc dynamic var state_po: String?
    @objc dynamic var candidate: String?
    @objc dynamic var state_fips = 0
    @objc dynamic var totalvotes = 0
    @objc dynamic var state: String?
    @objc dynamic var state_ic = 0
    @objc dynamic var version: String?
    @objc dynamic var candidatevotes = 0
    @objc dynamic var year = 0
    @objc dynamic var writein = false
    @objc dynamic var office: String?
    @objc dynamic var state_cen: String?
    @objc dynamic var notes: String?
    
    override static func primaryKey() -> String? {
        return "_id"
    }
}

