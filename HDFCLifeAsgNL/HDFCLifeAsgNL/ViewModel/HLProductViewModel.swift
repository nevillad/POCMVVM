//
//  HLProductViewModel.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 29/09/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import Foundation
class HLProductViewModel {
    let product: Product
    init(product: Product) {
        self.product = product
    }
    
    func getProductType() -> String{
        return self.product.productType
    }
        
}
