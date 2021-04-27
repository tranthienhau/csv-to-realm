//
//  CsvParser.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import Foundation
import SwiftCSV

protocol CsvParsing {
    func parse(fileName: String, delimiter: Character) throws -> [[String: Any]]
}

final class CsvParser: CsvParsing {
    private let mapper: ObjectMapping
    init(mapper: ObjectMapping) {
        self.mapper = mapper
    }
    
    func parse(fileName: String, delimiter: Character) throws -> [[String: Any]] {
        do {
            if let resource: CSV = try CSV(
                name: fileName,
                extension: "csv",
                bundle: .main,
                delimiter: delimiter,
                encoding: .utf8) {
                try resource.enumerateAsDict { [weak self] dict in
                    guard let self = self else { return }
                    let record = self.mapper.map( dictionary: dict)
                    
                }
                return []
            }
            return []
        } catch {
            throw error
        }
    }
}
