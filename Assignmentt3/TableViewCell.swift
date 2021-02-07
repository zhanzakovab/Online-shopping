//
//  TableViewCell.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

    import UIKit

protocol TableViewNew {
    func onClickCell(index: Int)
}

    class TableViewCell: UITableViewCell {

        @IBOutlet weak var tableImage: UIImageView!
        @IBOutlet weak var tableTitle: UILabel!
        @IBOutlet weak var tableDesc: UILabel!
        @IBOutlet weak var tablePrice: UILabel!
        @IBOutlet weak var tableBuy: UIButton!
        
        var cellDelegate: TableViewNew?
        var index: IndexPath?
        
        
        @IBAction func tableBuyAction(_ sender: Any) {
            cellDelegate?.onClickCell(index: (index?.row)!)
        }
        
        
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
