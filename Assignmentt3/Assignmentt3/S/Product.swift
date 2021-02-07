//
//  Product.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

import UIKit
import Foundation


class Product{
    var title: String
    var description: String
    var price: Int
    var image: UIImage
    
    init(titled: String, description: String, price: Int, imageName: String)
    {
        self.title = titled
        self.description = description
        self.price = price
        if let img = UIImage(named: imageName){
            image = img
        }
        else{
            image = UIImage(named: "1")!
        }
    }
}
