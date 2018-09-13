//
//  BinaryCell.swift
//  BinaryCounter2
//
//  Created by Amanda Demetrio on 9/12/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

protocol BinaryCellDelegate {
    func addButtonClicked(_ labelAmount:String,_ buttonPressed:UIButton)
}

class BinaryCell: UITableViewCell {
    
    var delegate: BinaryCellDelegate!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate?.addButtonClicked(numberLabel.text!, sender)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
