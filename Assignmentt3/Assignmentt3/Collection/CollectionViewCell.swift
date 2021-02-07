//
//  CollectionViewCell.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var colImage: UIImageView!
    @IBOutlet weak var colTitle: UILabel!
    @IBOutlet weak var colDesc: UILabel!
    @IBOutlet weak var colPrice: UILabel!
    @IBOutlet weak var colBuy: UIButton!
    
    
    static let identifider = String(describing: CollectionViewCell.self)
    static let nib = UINib(nibName: identifider, bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
