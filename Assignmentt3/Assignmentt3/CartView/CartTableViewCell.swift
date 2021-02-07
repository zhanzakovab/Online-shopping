//
//  CartTableViewCell.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 07.02.2021.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var CartImage: UIImageView!
    @IBOutlet weak var CartTitle: UILabel!
    @IBOutlet weak var CartDesc: UILabel!
    @IBOutlet weak var CartPrice: UILabel!
    
    static let identifider = String(describing: CartTableViewCell.self)
    static let nib = UINib(nibName: identifider, bundle: nil)
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
