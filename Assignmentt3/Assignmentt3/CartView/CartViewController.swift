//
//  CartViewController.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 06.02.2021.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var CartTableView: UITableView!
    
    
    @IBAction func CartBuy(_ sender: Any) {
        // create the alert
        let alert = UIAlertController(title: "Thank u", message: "Wait for delivery", preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CartTableView.delegate = self
        CartTableView.dataSource = self
        CartTableView.register(CartTableViewCell.nib, forCellReuseIdentifier: CartTableViewCell.identifider)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CartTableView.dequeueReusableCell(withIdentifier: CartTableViewCell.identifider, for: indexPath) as! CartTableViewCell

   return cell
    }
    

}
