//
//  CustomTableViewCell.swift
//  TableViews2
//
//  Created by José Antonio Vieyra García on 11/09/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var lbNombre2: UILabel!
    @IBOutlet weak var lbPrecio: UILabel!
    
    @IBOutlet weak var imgFoto2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        lbNombre2.font = UIFont.boldSystemFont(ofSize: 15)
        lbPrecio.textColor = .blue
        backgroundColor = .lightGray
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
