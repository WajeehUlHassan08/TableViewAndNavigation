//
//  CustomTableViewCell.swift
//  Custom_Table
//
//  Created by Satyendra  Singh on 02/12/20.
//  Copyright © 2020 Satyendra  Singh. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var img_View: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization codee
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
