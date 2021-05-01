//
//  ResultTableViewCell.swift
//  Phraze
//
//  Created by riddhi gupta on 01/05/21.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var main: UIView!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var speechLabel: UILabel!
    @IBOutlet weak var speechLabelWidth: NSLayoutConstraint!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        main.clipsToBounds = true
        main.layer.cornerRadius = 10
       // Initialization code
    }
    
    func setData(forWord word: String, ofType type: String){
        wordLabel.text = word
        let L = UILabel()
        L.text = type
        L.sizeToFit()
        speechLabel.text = type
        
        //speechLabel.sizeToFit()
        speechLabelWidth.constant = L.frame.width+40
        speechLabel.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.7882352941, blue: 0.6666666667, alpha: 1)
        speechLabel.clipsToBounds = true
        speechLabel.layer.cornerRadius = speechLabel.frame.height/2
        //speechLabel.frame.width += 40
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
