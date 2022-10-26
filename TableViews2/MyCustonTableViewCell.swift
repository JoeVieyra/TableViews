//
//  MyCustonTableViewCell.swift
//  TableViews2
//
//  Created by José Antonio Vieyra García on 11/09/22.
//

import UIKit

class MyCustonTableViewCell: UITableViewCell {

    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var myFistLabel: UILabel!
    
    @IBOutlet weak var myImg: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myFistLabel.font = UIFont.boldSystemFont(ofSize: 10)
        myFistLabel.textColor = .blue
        
        backgroundColor = .gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        print(myFistLabel.text ?? "")
        
      
        // Configure the view for the selected state
    }
    
    
}
