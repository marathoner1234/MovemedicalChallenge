//
//  ItemTableViewCell.swift
//  MovemedicalCodingChallenge
//
//  Created by STEPHEN D JAYNES on 4/6/20.
//  Copyright © 2020 STEPHEN D JAYNES. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    // MARK: - IBOutlet Properties -
    
    @IBOutlet var itemTypeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var additionalInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
