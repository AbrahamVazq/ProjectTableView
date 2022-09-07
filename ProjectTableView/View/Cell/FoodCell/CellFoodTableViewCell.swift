//
//  CellFoodTableViewCell.swift
//  ProjectTableView
//
//  Created by Moisés Abraham Vázquez Pérez on 07/09/22.
//

import UIKit

class CellFoodTableViewCell: UITableViewCell {
    
    //MARK: - O U T L E T S
    @IBOutlet weak var imgFood: UIImageView!
    @IBOutlet weak var lblTitleFood: UILabel!
    @IBOutlet weak var lblDescFood: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var vwContainer: UIView!{
        didSet{
            self.vwContainer.layer.cornerRadius = 10
        }
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
