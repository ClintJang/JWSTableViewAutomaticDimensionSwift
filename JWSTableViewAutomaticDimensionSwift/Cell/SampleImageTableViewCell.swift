//
//  SampleImageTableViewCell.swift
//  JWSTableViewAutomaticDimensionSwift
//
//  Created by Clint on 2017. 8. 23..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

import UIKit

final class SampleImageTableViewCell: UITableViewCell {
    @IBOutlet weak var sampleImageView: UIImageView!
    @IBOutlet weak var sampleImageViewLayoutConstraintWidth: NSLayoutConstraint!
    @IBOutlet weak var sampleImageViewLayoutConstraintHeight: NSLayoutConstraint!
    
    func initLayout(data: [String:String]) {
        if let imageName = data[Constants.Key.image], let image = UIImage(named:imageName) {
            self.sampleImageViewLayoutConstraintWidth.constant = image.size.width
            self.sampleImageViewLayoutConstraintHeight.constant = image.size.height
            
            self.sampleImageView.image = image
        } else {
            self.sampleImageViewLayoutConstraintWidth.constant = 0.0
            self.sampleImageViewLayoutConstraintHeight.constant = 0.0
        }
    }
}
