//
//  ElectionCountyRecord.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import RealmSwift

class ElectionCountyRecord: Object {
    @objc dynamic var _id = ObjectId.generate()
    @objc dynamic var totalvotes = 0
    @objc dynamic var state: String?
    @objc dynamic var year = 0
    @objc dynamic var state_po: String?
    @objc dynamic var county: String?
    @objc dynamic var office: String?
    @objc dynamic var candidate: String?
    @objc dynamic var party: String?
    @objc dynamic var version: String?
    @objc dynamic var fips = 0
    @objc dynamic var candidatevotes = 0
    
    override static func primaryKey() -> String? {
        return "_id"
    }
}
