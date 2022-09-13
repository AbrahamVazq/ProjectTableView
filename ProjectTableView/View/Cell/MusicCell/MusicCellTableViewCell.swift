//
//  MusicCellTableViewCell.swift
//  ProjectTableView
//
//  Created by Anayeli Guerrero Pulido on 12/09/22.
//

import UIKit

class MusicCellTableViewCell: UITableViewCell {
    @IBOutlet weak var imgMusic: UIImageView!
    
    @IBOutlet weak var lblArtista: UILabel!
    
    @IBOutlet weak var lblAlbum: UILabel!
    
    
    @IBOutlet weak var lblCancion: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
