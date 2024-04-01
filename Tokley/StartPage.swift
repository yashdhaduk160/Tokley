//
//  StartPage.swift
//  Tokley
//
//  Created by Yash Dhaduk on 07/03/24.
//

import UIKit

class StartPage: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        simulatePageLoad()

        func simulatePageLoad() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {

                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectOption")
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    
    
}
