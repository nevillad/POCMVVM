//
//  HLProductCategoryViewController.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 29/09/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import UIKit

class HLProductTypesViewController: UIViewController {
    private var viewModel: HLProductTypesViewModel?
    
    @IBOutlet weak var productTypesCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.viewModel = HLProductTypesViewModel()
//        self.viewModel?.loadProduct()
        self.setupView()
    }
    
    func setupView(){
        self.productTypesCollection.register(HLProductCategoryCollectionViewCell.self, forCellWithReuseIdentifier: "idProdcutCategoryCell")
        self.productTypesCollection.reloadData()
    }
}

extension HLProductTypesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "idProdcutCategoryCell", for: indexPath) as! HLProductCategoryCollectionViewCell
        return cell
    }
}
