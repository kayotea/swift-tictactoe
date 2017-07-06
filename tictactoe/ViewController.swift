//
//  ViewController.swift
//  tictactoe
//
//  Created by Placoderm on 7/6/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var board = [ 0, 0, 0,
                  0, 0, 0,
                  0, 0, 0]
    var turn_count = 0
    
    @IBOutlet weak var winnerMessage: UILabel!
    @IBAction func boardButtonPressed(_ sender: UIButton) {
        if board[sender.tag - 1] == 0 {
            print(sender.tag)
            turn_count += 1 //change player
            if turn_count%2 == 0 {//check if player2 (red)
                board[sender.tag-1] = 2
                sender.backgroundColor = UIColor(red: (1.0), green: (0.0), blue: (0.0), alpha: 1.0)
            } else {//check if player1 (blue)
                board[sender.tag-1] = 1
                sender.backgroundColor = UIColor(red: (0.0), green: (0.0), blue: (1.0), alpha: 1.0)
            }
            checkForWinner()
        }
    }
    @IBAction func resetButton(_ sender: UIButton) {
        winnerMessage.isHidden = true
        winnerMessage.text = ""
        
        board = [ 0, 0, 0, 0, 0, 0, 0, 0, 0]
        turn_count = 0
    }

    func checkForWinner() {
        //three across top
        print(board[0])
        print(board[1])
        print(board[2])
        if board[0] == board[1] && board[0] == board[2] && board[0] != 0{
            if board[0] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //three across middle
        if board[3] == board[4] && board[3] == board[5] && board[3] != 0{
            if board[3] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //three across bottom
        if board[6] == board[7] && board[6] == board[8] && board[6] != 0{
            if board[6] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //three down left
        if board[0] == board[3] && board[0] == board[6] && board[0] != 0{
            if board[0] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //three down middle
        if board[1] == board[4] && board[1] == board[7] && board[1] != 0{
            if board[1] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //three down right
        if board[2] == board[5] && board[2] == board[8] && board[2] != 0{
            if board[2] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //diagonal left down to right
        if board[0] == board[4] && board[0] == board[8] && board[0] != 0{
            if board[0] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
        //diagonal right down to left
        if board[2] == board[4] && board[2] == board[6] && board[2] != 0{
            if board[2] == 1 {
                winnerMessage.text = "Blue wins!"
                winnerMessage.isHidden = false
            } else {
                winnerMessage.text = "Red wins!"
                winnerMessage.isHidden = false
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerMessage.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

