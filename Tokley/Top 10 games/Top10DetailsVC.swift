//
//  Top10DetailsVC.swift
//  Tokley
//
//  Created by Yash Dhaduk on 09/03/24.
//

import UIKit

class Top10DetailsVC: UIViewController {

    @IBOutlet weak var img_bg: UIImageView!
    
    @IBOutlet weak var lbl_details: UILabel!
    var detailsofgame = ""
    var BGImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        img_bg.image = BGImage
        lbl_details.text = detailsofgame
        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func btn_back(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Top10VC")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}
