//
//  SampleImageTableViewCell.swift
//  JWSTableViewAutomaticDimensionSwift
//
//  Created by Jang Wangsu on 09/02/2019.
//  Copyright © 2019 Jang Wangsu. All rights reserved.
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
