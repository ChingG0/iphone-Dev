//
//  DetailViewCell.swift
//  project10
//
//  Created by ching on 2022/2/20.
//

import UIKit

class DetailViewCell: UITableViewCell {
    @IBOutlet var fieldLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
