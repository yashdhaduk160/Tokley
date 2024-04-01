//
//  GamehistoryVC.swift
//  Tokley
//
//  Created by Yash Dhaduk on 09/03/24.
//

import UIKit

class GamehistoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableview.layer.cornerRadius = 20
        self.tableview.dataSource = self
        self.tableview.delegate = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btn_back(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectOption")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Gamehistorycell", for: indexPath) as! Gamehistorycell
        return cell
    }
}
