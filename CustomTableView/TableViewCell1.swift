//
//  TableViewCell1.swift
//  CustomTableView
//
//  Created by ASU Mobile on 11/30/16.
//  Copyright © 2016 asu.edu.CustomTableView. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet var headLineLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var attributeLabel: UILabel!
    @IBOutlet var imageViewBox: UIImageView!
    @IBOutlet var imageSmall: UIImageView!
       
    @IBOutlet var discriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
