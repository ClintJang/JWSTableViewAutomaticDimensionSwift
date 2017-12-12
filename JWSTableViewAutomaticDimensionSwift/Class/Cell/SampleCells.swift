//
//  SampleCells.swift
//  JWSTableViewAutomaticDimensionSwift
//
//  Created by Jang Wangsu on 2017. 12. 12..
//  Copyright © 2017년 Jang Wangsu. All rights reserved.
//

import UIKit

// Text Sample Cell
final class TextSampleTableViewCell : UITableViewCell {
    
    @IBOutlet weak var textMsgLabel: UILabel!
    
    
    public func initLayout( data: [String:String] )
    {
        self.textMsgLabel.text = data[kTextKey]!
    }
}

// Image Sample Cell
final class ImageSampleTableViewCell : UITableViewCell {
    
    @IBOutlet weak var sampleImageView: UIImageView!
    
    @IBOutlet weak var sampleImageViewLayoutConstraintWidth: NSLayoutConstraint!
    @IBOutlet weak var sampleImageViewLayoutConstraintHeight: NSLayoutConstraint!
    
    public func initLayout( data: [String:String] )
    {
        let imageNameString:String = data[kTextKey]!
        
        if let image = UIImage(named:imageNameString)
        {
            self.sampleImageViewLayoutConstraintWidth.constant = image.size.width
            self.sampleImageViewLayoutConstraintHeight.constant = image.size.height
            
            self.sampleImageView.image = image
        }
        else
        {
            self.sampleImageViewLayoutConstraintWidth.constant = 0.0
            self.sampleImageViewLayoutConstraintHeight.constant = 0.0
        }
    }
}

// Text And Image Sample Cell
final class TextAndImageSampleTableViewCell : UITableViewCell {
    
    @IBOutlet weak var textMsgLabel: UILabel!
    @IBOutlet weak var sampleImageView: UIImageView!
    
    @IBOutlet weak var sampleImageViewLayoutConstraintWidth: NSLayoutConstraint!
    @IBOutlet weak var sampleImageViewLayoutConstraintHeight: NSLayoutConstraint!
    
    public func initLayout( data: [String:String] )
    {
        self.textMsgLabel.text = data[kTextKey]!
        
        let imageNameString = data[kImageKey]!
        
        if let image = UIImage(named:imageNameString)
        {
            self.sampleImageViewLayoutConstraintWidth.constant = image.size.width
            self.sampleImageViewLayoutConstraintHeight.constant = image.size.height
            
            self.sampleImageView.image = image
        }
        else
        {
            self.sampleImageViewLayoutConstraintWidth.constant = 0.0
            self.sampleImageViewLayoutConstraintHeight.constant = 0.0
        }
    }
}
