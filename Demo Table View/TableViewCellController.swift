//
//  TableViewCellController.swift
//  Demo Table View
//
//  Created by Minh Anh on 15/12/2021.
//

import UIKit

class TableViewCellController: UITableViewCell {
    
    @IBOutlet var imgOL: UIImageView!
    @IBOutlet var titleOL: UILabel!
    @IBOutlet var timeOL: UILabel!
    @IBOutlet var statusOL: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
