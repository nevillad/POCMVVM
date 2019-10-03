//
//  HLProductCategoryCollectionViewCell.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 02/10/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import UIKit

class HLProductCategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productCategoryNameLabel: UILabel!
    
    func setViewModel(){
        self.productCategoryNameLabel.text = "Temp..."
    }
}
