//  CountyCellTableViewCell.swift
//  ProjectTableView
//  Created by Anayeli Guerrero Pulido on 12/09/22.

import UIKit

class CountyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCountry: UIImageView!
    @IBOutlet weak var lblPais: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
