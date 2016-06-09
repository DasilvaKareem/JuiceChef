//
//  JuiceCardCell.swift
//  Juicechef
//
//  Created by Kareem Dasilva on 6/9/16.
//  Copyright © 2016 Juice chef. All rights reserved.
//

import UIKit

class JuiceCardCell: UITableViewCell {

    @IBOutlet var juiceDescription: UILabel!
    @IBOutlet var preview: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
