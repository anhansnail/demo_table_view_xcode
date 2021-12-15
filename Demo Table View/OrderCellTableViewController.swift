//
//  OrderCellTableViewController.swift
//  Demo Table View
//
//  Created by Minh Anh on 15/12/2021.
//

import UIKit

class OrderCellTableViewController: UITableViewCell {
    
    @IBOutlet var statusBarOL: UIView!
    @IBOutlet var imgOrderOL: UIImageView!
    @IBOutlet var codeOL: UILabel!
    @IBOutlet var priceOL: UILabel!
    @IBOutlet var phoneNameOL: UILabel!
    @IBOutlet var addressOL: UILabel!
    @IBOutlet var dateOL: UILabel!
    @IBOutlet var positionOL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
