//
//  SampleTextTableViewCell.swift
//  JWSTableViewAutomaticDimensionSwift
//
//  Created by Clint on 2017. 8. 23..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

import UIKit

final class SampleTextTableViewCell: UITableViewCell {
    @IBOutlet weak var textMsgLabel: UILabel!
    func initLayout( data: [String: String] ) {
        self.textMsgLabel.text = data[Constants.Key.text]
    }
}
