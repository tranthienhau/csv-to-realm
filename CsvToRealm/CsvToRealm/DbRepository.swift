//
//  DbRepository.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import RealmSwift

protocol DbRepositoring {
    func save<T: Object>(object: T) throws
}

final class DbRepository: DbRepositoring {
    private let realm: Realm
    init() {
        var config = Realm.Configuration.defaultConfiguration
        print("Database created here \(config.fileURL)")
        config.deleteRealmIfMigrationNeeded = true
        self.realm = try! Realm(configuration: config)
    }
    func save<T: Object>(object: T) throws {
        // Prepare to handle exceptions.
        do {
            // Open a thread-safe transaction.
            try realm.write {
                // Make any writes within this code block.
                // Realm automatically cancels the transaction
                // if this code throws an exception. Otherwise,
                // Realm automatically commits the transaction
                // after the end of this code block.
                realm.add(object, update: .all)
            }
        } catch {
            throw error
        }
    }
}
