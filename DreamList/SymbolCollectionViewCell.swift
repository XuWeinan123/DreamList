//
//  SymbolCollectionViewCell.swift
//  DreamList
//
//  Created by 徐炜楠 on 2018/8/12.
//  Copyright © 2018年 徐炜楠. All rights reserved.
//

import UIKit

class SymbolCollectionViewCell: UICollectionViewCell {
    @IBOutlet var symbolImage: UIImageView!
    @IBOutlet var symbolLabel: UILabel!
    override func awakeFromNib() {
        symbolLabel.font = UIFont(name: "HYRunYuan-FEW", size: 16.0)
    }
    
}
