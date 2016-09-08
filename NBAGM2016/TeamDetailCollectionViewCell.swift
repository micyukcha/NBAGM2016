//
//  TeamDetailCollectionViewCell.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/8/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import UIKit

@IBDesignable
class TeamDetailCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var teamDetailLabel: UILabel!
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.blackColor().CGColor
    }

}
