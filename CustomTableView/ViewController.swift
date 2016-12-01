//
//  ViewController.swift
//  CustomTableView
//
//  Created by ASU Mobile on 11/30/16.
//  Copyright © 2016 asu.edu.CustomTableView. All rights reserved.
//

import UIKit

struct data {
    let genre:String!
    let headLineLabel:String!
    let bodyLabel:String!
    let attributeLabel:String!
    let image:UIImage!
    let show:Bool!
    
}


class TableViewController: UITableViewController {

    var dataArray = [data]()
    override func viewDidLoad() {
        
        dataArray = [data(genre:"Biography",headLineLabel:"Social N/W   ",bodyLabel:"2010",attributeLabel:"N/A",image: #imageLiteral(resourceName: "image"),show:false),
                     data(genre:"Biography",headLineLabel:"42",bodyLabel:nil,attributeLabel:"N/A",image: #imageLiteral(resourceName: "image"), show:true),
                     data(genre:"Action",headLineLabel:"Avatar",bodyLabel:"2009",attributeLabel:"N/A",image: #imageLiteral(resourceName: "image"),show:false),
                     data(genre:"Biography",headLineLabel:"Rudy",bodyLabel:nil,attributeLabel:"N/A",image: #imageLiteral(resourceName: "image"), show:true),
                     data(genre:"Biography", headLineLabel:"Blind Side",bodyLabel:nil,attributeLabel:"N/A",image: #imageLiteral(resourceName: "image"),show:false)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rule1 = UITraitCollection(horizontalSizeClass: .regular)
        let rule2 = UITraitCollection(horizontalSizeClass: .compact)
        if(dataArray[indexPath.row].bodyLabel != nil) {
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.imageViewBox.image = dataArray[indexPath.row].image
            cell.imageViewBox.layer.cornerRadius = cell.imageViewBox.frame.size.width / 2;
            cell.imageViewBox.clipsToBounds = true;
            cell.imageSmall.image = dataArray[indexPath.row].image
            if(dataArray[indexPath.row].show == true) {cell.imageSmall.isHidden = true}
            else {cell.attributeLabel.isHidden=true}
            cell.bodyLabel.font=UIFont.preferredFont(forTextStyle: .body)
            cell.headLineLabel.font=UIFont.preferredFont(forTextStyle: .headline)
            cell.headLineLabel.text = dataArray[indexPath.row].headLineLabel
            cell.attributeLabel.text = dataArray[indexPath.row].attributeLabel
            cell.bodyLabel.text = dataArray[indexPath.row].bodyLabel
            cell.discriptionLabel.text = dataArray[indexPath.row].genre
            if tableView.traitCollection.containsTraits(in: rule1) {
                cell.discriptionLabel.isHidden=false
            } else if tableView.traitCollection.containsTraits(in: rule2) {
                cell.discriptionLabel.isHidden=true
            }
            return cell
            
        }else {
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.imageViewBox.image = dataArray[indexPath.row].image
            cell.imageSmall.image = dataArray[indexPath.row].image
            cell.imageViewBox.layer.cornerRadius = cell.imageViewBox.frame.size.width / 2;
            cell.imageViewBox.clipsToBounds = true;
            cell.headLineLabel.text = dataArray[indexPath.row].headLineLabel
            cell.headLineLabel.font=UIFont.preferredFont(forTextStyle: .headline)
            cell.attributeLabel.text = dataArray[indexPath.row].attributeLabel
            cell.discriptionLabel.text = dataArray[indexPath.row].genre
            if(dataArray[indexPath.row].show == true) {cell.imageSmall.isHidden = true}
            else {cell.attributeLabel.isHidden=true}
            if tableView.traitCollection.containsTraits(in: rule1) {
                cell.discriptionLabel.isHidden=false
            } else if tableView.traitCollection.containsTraits(in: rule2) {
                cell.discriptionLabel.isHidden=true
            }
            return cell
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}

