//
//  Tokley.swift
//  Tokley
//
//  Created by Yash Dhaduk on 07/03/24.
//

import UIKit
import AVFoundation

class TicTacToe: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var statusLabel: UILabel!
    var currentPlayer = Player.x
    var board = [Player?](repeating: nil, count: 9)
    var isGameActive = true
    var audioplayer : AVAudioPlayer?
    
    enum Player {
        case x
        case o
        
        var symbol: String {
            switch self {
            case .x:
                return " X"
            case .o:
                return " O"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetBoard()
        
    }
    
    func resetBoard() {
        for button in buttons {
            button.setTitle(nil, for: .normal)
        }
        board = [Player?](repeating: nil, count: 9)
        currentPlayer = .x
        statusLabel.text = "X"
        isGameActive = true
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        playsound()

        guard isGameActive else {
            return
        }
        guard let index = buttons.firstIndex(of: sender) else {
            return
        }
        guard board[index] == nil else {
            return
        }
        board[index] = currentPlayer
        sender.setTitle(currentPlayer.symbol, for: .normal)
        
        if checkForWin() {
            
            let storyboard = UIStoryboard(name: "CustomPopup", bundle: nil)
            let customAlert = storyboard.instantiateViewController(withIdentifier: "Result") as! Result
            customAlert.result = "Player \(currentPlayer.symbol) win"
            self.resetBoard()
            customAlert.modalPresentationStyle = .overFullScreen
            present(customAlert, animated: true, completion: nil)
        
        } else if board.allSatisfy({ $0 != nil }) {
            
            let storyboard = UIStoryboard(name: "CustomPopup", bundle: nil)
            let customAlert = storyboard.instantiateViewController(withIdentifier: "Result") as! Result
            customAlert.result = "it is a draw"
            self.resetBoard()
            customAlert.modalPresentationStyle = .overFullScreen
            present(customAlert, animated: true, completion: nil)
        } else {
            currentPlayer = (currentPlayer == .x) ? .o : .x
            statusLabel.text = "\(currentPlayer.symbol)"
            
        }
    }
    
    func playsound() {
            guard let soundURL = Bundle.main.url(forResource: "buttonclick", withExtension: "mp3") else { return }

            do {
                audioplayer = try AVAudioPlayer(contentsOf: soundURL)
                audioplayer?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        }
    
    func checkForWin() -> Bool {
        let winPatterns: [[Int]] = [[0, 1, 2], [3, 4, 5], [6, 7, 8],[0, 3, 6], [1, 4, 7], [2, 5, 8],[0, 4, 8], [2, 4, 6]
        ]
        
        for pattern in winPatterns {
            let positions = pattern.map { board[$0] }
            if positions.allSatisfy({ $0 == currentPlayer }) {
                return true
            }
        }
        return false
    }
    
    @IBAction func btn_back(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectOption")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
