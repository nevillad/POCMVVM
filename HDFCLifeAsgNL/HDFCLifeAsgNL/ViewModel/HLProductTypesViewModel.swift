//
//  ProductTypeViewModel.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 29/09/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import Foundation

class HLProductTypesViewModel  {
    var prodcutList: Array<HLProductViewModel>?
    var productCategoty: [String:[HLProductViewModel]]?
    
    func loadProduct(){
        let service = HLService()
        service.loadProducts(completions: { productList in
            self.prodcutList = productList
            self.productCategoty = Dictionary(grouping: self.prodcutList!, by: {$0.product.productType})
            print(self.productCategoty)
            
        }) { error in
            
        }
    }
}
