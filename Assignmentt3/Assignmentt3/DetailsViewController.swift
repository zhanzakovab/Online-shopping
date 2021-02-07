//
//  DetailsViewController.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detImage: UIImageView!
    @IBOutlet weak var detPrice: UILabel!
    @IBOutlet weak var detTitle: UILabel!
    @IBOutlet weak var detDesc: UILabel!
    @IBOutlet weak var detBuy: UIButton!
    
    @IBAction func AddToCart(_ sender: Any) {
    }
    
    var product: cellData?

  
    override func viewDidLoad() {
        super.viewDidLoad()
        detTitle.text = product?.titles
        detPrice.text = product?.prices
        detDesc.text = product?.descriptions
        detImage.image = product?.images
        

        // Do any additional setup after loading the view.
    }
    


}
