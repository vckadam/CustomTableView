//
//  TableViewCell2.swift
//  CustomTableView
//
//  Created by ASU Mobile on 11/30/16.
//  Copyright © 2016 asu.edu.CustomTableView. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet var imageViewBox: UIImageView!
    
    @IBOutlet var headLineLabel: UILabel!
    
    @IBOutlet var imageSmall: UIImageView!
    
    @IBOutlet var discriptionLabel: UILabel!
    @IBOutlet var attributeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
