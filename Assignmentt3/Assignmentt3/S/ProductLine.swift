//
//  ProductLine.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

import Foundation

class ProductLine{
    var name: String
    var products: [Product]
    
    init(named:String, includeProducts:[Product]){
        name = named
        products = includeProducts
    }
    
    class func productLines() -> [ProductLine]{
        return [self.Line()]
    }
    
    class func Line() -> ProductLine{
        var products = [Product]()
        
        products.append(Product(titled: "Choco", description: "Try it", price: 200, imageName: "1"))
        products.append(Product(titled: "Shoes", description: "New", price: 500, imageName: "2"))
        products.append(Product(titled: "Printer", description: "White", price: 1000, imageName: "3"))
        products.append(Product(titled: "Phone", description: "Black", price: 2000, imageName: "5"))
        products.append(Product(titled: "Bag", description: "Buy it", price: 350, imageName: "6"))
        
        return ProductLine(named: "Line", includeProducts: products)

    }
}
