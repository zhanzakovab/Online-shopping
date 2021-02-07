//
//  TableViewCell.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let identifider = String(describing: TableViewCell.self)
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
