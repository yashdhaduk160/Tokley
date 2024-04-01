//
//  It's_a_draw.swift
//  Tokley
//
//  Created by Yash Dhaduk on 08/03/24.
//

import UIKit

class Result: UIViewController {

    @IBOutlet weak var lbl_result: UILabel!
    @IBOutlet weak var view_popup: UIView!
    
    var result = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lbl_result.text = result
        self.view_popup.layer.cornerRadius = 25
    }
    
    @IBAction func btn_play_again(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
