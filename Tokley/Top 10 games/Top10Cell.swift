//
//  Top10Cell.swift
//  Tokley
//
//  Created by Yash Dhaduk on 09/03/24.
//

import UIKit

class Top10Cell: UITableViewCell {

    @IBOutlet weak var view_cell: UIView!
    
    @IBOutlet weak var lbl_name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.lbl_name.font = UIFont(name: "Outer Space", size: 17)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
