//
//  TouristPlaceListTableViewCell.swift
//  Paris Guide
//
//  Created by Bharat Nagandla on 5/25/18.
//  Copyright © 2018 Bharat Nagandla. All rights reserved.
//

import UIKit

class TouristPlaceListTableViewCell: UITableViewCell {

    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
