//
//  Gamehistorycell.swift
//  Tokley
//
//  Created by Yash Dhaduk on 09/03/24.
//

import UIKit

class Gamehistorycell: UITableViewCell {

    @IBOutlet weak var lbl_history: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

        self.lbl_history.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
