//
//  SongTableViewCell.swift
//  Algorhythm
//
//  Created by Praynaa Rawlani on 7/12/15.
//  Copyright (c) 2015 NSoojin. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var songTitle: UILabel!
//    var titleLabel: String!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//        songTitle.text = titleLabel
//    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
