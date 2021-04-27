//
//  ElectionStateRecord.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import RealmSwift

class ElectionStateRecord: Object {
    @objc dynamic var party_simplified: String?
    @objc dynamic var party_detailed: String?
    @objc dynamic var state_po: String?
    @objc dynamic var candidate: String?
    @objc dynamic var state_fips: String?
    @objc dynamic var totalvotes: String?
    @objc dynamic var state: String?
    @objc dynamic var state_ic: String?
    @objc dynamic var version: String?
    @objc dynamic var candidatevotes: String?
    @objc dynamic var year: String?
    @objc dynamic var writein: String?
    @objc dynamic var office: String?
    @objc dynamic var state_cen: String?
    @objc dynamic var notes: String?
}

