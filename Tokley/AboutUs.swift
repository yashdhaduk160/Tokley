//
//  AboutUs.swift
//  Tokley
//
//  Created by Yash Dhaduk on 08/03/24.
//

import UIKit

class AboutUs: UIViewController {

    @IBOutlet weak var about_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.about_view.layer.cornerRadius = 20
    }
    

   
    @IBAction func btn_back(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectOption")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
