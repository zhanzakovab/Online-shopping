//
//  ViewController.swift
//  Assignmentt3
//
//  Created by Zhanzakova Botakoz on 05.02.2021.
//

import UIKit

struct cellData{
    var titles: String
    var descriptions: String
    var prices: String
    var images: UIImage
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, TableViewNew {
    
    
    func onClickCell(index: Int) {
        let alert = UIAlertController(title: "\(arrayOfCellData[index].titles) ", message: "was added into cart", preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    
  //  var arrayOfCellData = [cellData]()
    var arrayOfCellData = [cellData(titles: "Choco", descriptions: "Try it", prices: "200", images: #imageLiteral(resourceName: "1")),
                       cellData(titles: "Shoes", descriptions: "New", prices: "500", images: #imageLiteral(resourceName: "2")),
    cellData(titles: "Printer", descriptions: "White", prices: "1000", images: #imageLiteral(resourceName: "3")),
    cellData(titles: "Phone", descriptions: "Black", prices: "2000", images: #imageLiteral(resourceName: "5")),
    cellData(titles: "Bag", descriptions: "Buy it", prices: "350", images: #imageLiteral(resourceName: "6"))]
            

    
//productArray = appleProducts
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CollectionViewCell.nib, forCellWithReuseIdentifier: CollectionViewCell.identifider)
        tableView.register(TableViewCell.nib, forCellReuseIdentifier: TableViewCell.identifider)
 

    }
    
    
    @IBOutlet weak var mySeg: UISegmentedControl!
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if mySeg.selectedSegmentIndex == 0{
            tableView.isHidden = false
            collectionView.isHidden = true
        }
        else{
            tableView.isHidden = true
            collectionView.isHidden = false
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifider, for: indexPath) as! TableViewCell
        
        cell.tableTitle.text = arrayOfCellData[indexPath.row].titles
        cell.tableDesc.text = arrayOfCellData[indexPath.row].descriptions
        cell.tablePrice.text = arrayOfCellData[indexPath.row].prices
        cell.tableImage.image = arrayOfCellData[indexPath.row].images
    
        cell.cellDelegate = self
        cell.index = indexPath
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController {
            destination.product = arrayOfCellData[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifider, for: indexPath) as! CollectionViewCell
        
        cell.colTitle.text = arrayOfCellData[indexPath.row].titles
        cell.colDesc.text = arrayOfCellData[indexPath.row].descriptions
        cell.colPrice.text = arrayOfCellData[indexPath.row].prices
        cell.colImage.image = arrayOfCellData[indexPath.row].images
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 200, height: 200)
        }
    
}

    

