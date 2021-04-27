//
//  ObjectMapper.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import Foundation
import RealmSwift

protocol ObjectMapping {
    func map(dictionary: [String: String]) -> Object?
}

final class ObjectMapper: ObjectMapping {
    private let type: Object.Type
    init(type: Object.Type) {
        self.type = type
    }
    
    func map(dictionary: [String : String]) -> Object? {
        let object = type.init()
        for (key, value) in dictionary {
            object.setValue(value, forKey: key.lowercased())
        }
        return object
    }
}
