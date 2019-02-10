//
//  SampleTextTableViewCell.swift
//  JWSTableViewAutomaticDimensionSwift
//
//  Created by Jang Wangsu on 09/02/2019.
//  Copyright © 2019 Jang Wangsu. All rights reserved.
//

import UIKit

final class SampleTextTableViewCell: UITableViewCell {
    @IBOutlet weak var textMsgLabel: UILabel!
    func initLayout( data: [String: String] ) {
        self.textMsgLabel.text = data[Constants.Key.text]
    }
}
