//
//  ResultTableViewCell.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var main: UIView!
    @IBOutlet weak var greenBg: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        greenBg.layer.cornerRadius = 12
        //greenBg.clipsToBounds = true
        main.layer.cornerRadius = 10
        main.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
