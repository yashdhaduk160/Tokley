//
//  SelectOption.swift
//  Tokley
//
//  Created by Yash Dhaduk on 08/03/24.
//

import UIKit

var BaseURL = ""
var AppName = Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String

@available(iOS 13.0, *)
class SelectOption: UIViewController {

    func share(items : [Any]) {
        let activityController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = self.view
        self.present(activityController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TicTacToe(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TicTacToe")
        self.navigationController?.pushViewController(vc, animated: true)
        }
    

    @IBAction func top_games(_ sender: Any) {
       
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Top10VC")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func Gamehistory(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GamehistoryVC") as! GamehistoryVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btn_about(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutUs")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btn_share(_ sender: Any) {
        
        print("Tapped Share", AppName ?? "")
        guard let appName = AppName else { return }
        self.share(items: [appName, URL.init(string: BaseURL) as Any])
    }
    
    @IBAction func btn_rate(_ sender: Any) {
        
        rateUs()
    }
    
    
}
