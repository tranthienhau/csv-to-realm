//
//  ViewController.swift
//  CsvToRealm
//
//  Created by Duy Nguyen on 4/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            try parseCsv(fileName: "1976-2020-president", delimiter: ",", mapper: ObjectMapper(type: ElectionStateRecord.self))
            try parseCsv(fileName: "countypres_2000-2016", delimiter: ",", mapper: ObjectMapper(type: ElectionCountyRecord.self))
        } catch {
            print("Got error when parse csv \(error.localizedDescription)")
        }
    }
    
    private func parseCsv(fileName: String, delimiter: Character, mapper: ObjectMapping) throws {
        let repository = DbRepository()
        let parser = CsvParser(mapper: mapper, repository: repository)
        do {
            try parser.parse(fileName: fileName, delimiter: delimiter)
        } catch {
            throw error
        }
    }
}

