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
        parseCsv()
    }

    func parseCsv() {
        let mapper = ObjectMapper(type: ElectionStateRecord.self)
        let repository = DbRepository()
        let parser = CsvParser(mapper: mapper, repository: repository)
        let datas = try! parser.parse(fileName: "1976-2020-president", delimiter: ",")
        print(datas)
        
    }
}

