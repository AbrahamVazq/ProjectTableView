//
//  ElectrodomesticosTableViewCell.swift
//  ProjectTableView
//
//  Created by Anayeli Guerrero Pulido on 14/09/22.
//

import UIKit

class ElectrodomesticosTableViewCell: UITableViewCell {
    @IBOutlet weak var imgElectrodomestico: UIImageView!
    
    @IBOutlet weak var lblNombreElectrodomestico: UILabel!
    
    @IBOutlet weak var lblPrecioElectrodomestico: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
