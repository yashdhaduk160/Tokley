//
//  Top10VC.swift
//  Tokley
//
//  Created by Yash Dhaduk on 09/03/24.
//

import UIKit

class Top10VC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let image = ["pubg 1","COD","among us","minecraft","League of Legends","Hearthstone"]
    let name = ["PUBG","Call Of Duty","Among us","Minecraft","League of Legends","Hearthstone"]
    let details = ["Battlegrounds is a battle royale game developed by PUBG Studios and published by Krafton. The game, which was inspired by the Japanese film Battle Royale, is based on previous mods created by Brendan 'PlayerUnknown' Greene for other games, and expanded into a standalone game under Greene's creative direction.","Call of Duty, also referred to as, is a video game series and media franchise published by Activision, starting in 2003. The games were first developed by Infinity Ward, then by Treyarch and Sledgehammer Games. Several spin-off and handheld games were made by other developers.","Among Us is a 2018 online multiplayer social deduction game developed and published by American game studio Innersloth. The game was inspired by the party game Mafia and the science fiction horror film The Thing.","Minecraft is a 2011 sandbox game developed by Mojang Studios and originally released in 2009. The game was created by Markus 'Notch' Persson in the Java programming language.","League of Legends, commonly referred to as League, is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot's founders sought to develop a stand-alone game in the same genre.","Hearthstone is a free-to-play online digital collectible card game developed and published by Blizzard Entertainment. Originally subtitled Heroes of Warcraft, Hearthstone builds upon the existing lore of the Warcraft series by using the same elements, characters, and relics."]
    @IBOutlet weak var table_view: UITableView!
    
    override func viewDidLoad() {
        
        self.table_view.dataSource = self
        self.table_view.delegate = self
        super.viewDidLoad()

        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Top10Cell", for: indexPath) as! Top10Cell

        cell.lbl_name.text = name[indexPath.row]
        
        return cell
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Top10DetailsVC") as! Top10DetailsVC
        
        vc.BGImage = UIImage(named: image[indexPath.row])!
        vc.detailsofgame = details[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

    @IBAction func btn_back(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectOption")
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}
