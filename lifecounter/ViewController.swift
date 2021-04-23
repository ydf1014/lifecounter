//
//  ViewController.swift
//  lifecounter
//
//  Created by Danfeng Yang on 4/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var life1: UILabel!
    @IBOutlet weak var life2: UILabel!
    @IBOutlet weak var life3: UILabel!
    @IBOutlet weak var life4: UILabel!
    
    @IBOutlet weak var loser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func changeValue(val:Int, target: Int) {
        switch target {
        case 1:
            let lifeTotal = Int(life1.text!)!
            let newTotal = lifeTotal + val
            life1.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 1 LOSES!"
            }
        case 2:
            let lifeTotal = Int(life2.text!)!
            let newTotal = lifeTotal + val
            life2.text = String(newTotal)

            if (newTotal <= 0) {
                loser.text = "Player 2 LOSES!"
            }
        case 3:
            let lifeTotal = Int(life3.text!)!
            let newTotal = lifeTotal + val
            life3.text = String(newTotal)

            if (newTotal <= 0) {
                loser.text = "Player 3 LOSES!"
            }
        case 4:
            let lifeTotal = Int(life4.text!)!
            let newTotal = lifeTotal + val
            life4.text = String(newTotal)

            if (newTotal <= 0) {
                loser.text = "Player 4 LOSES!"
            }
        default:
            print("not possible")
        }
    }
    
    @IBAction func plusOneForP1(_ sender: Any) {
        changeValue(val: 1, target: 1)
    }
    @IBAction func negOneForP1(_ sender: Any) {
        changeValue(val: -1, target: 1)
    }
    @IBAction func plusFiveForP1(_ sender: Any) {
        changeValue(val: 5, target: 1)
    }
    @IBAction func negFiveForP1(_ sender: Any) {
        changeValue(val: -5, target: 1)
    }
    
    @IBAction func plusOneForP2(_ sender: Any) {
        changeValue(val: 1, target: 2)
    }
    @IBAction func negOneForP2(_ sender: Any) {
        changeValue(val: -1, target: 2)
    }
    @IBAction func plusFiveForP2(_ sender: Any) {
        changeValue(val: 5, target: 2)
    }
    @IBAction func negFiveForP2(_ sender: Any) {
        changeValue(val: -5, target: 2)
    }
    
    @IBAction func plusOneForP3(_ sender: Any) {
        changeValue(val: 1, target: 3)
    }
    @IBAction func negOneForP3(_ sender: Any) {
        changeValue(val: -1, target: 3)
    }
    @IBAction func plusFiveForP3(_ sender: Any) {
        changeValue(val: 5, target: 3)
    }
    @IBAction func negFiveForP3(_ sender: Any) {
        changeValue(val: -5, target: 3)
    }
    
    @IBAction func plusOneForP4(_ sender: Any) {
        changeValue(val: 1, target: 4)
    }
    @IBAction func negOneForP4(_ sender: Any) {
        changeValue(val: -1, target: 4)
    }
    @IBAction func plusFiveForP4(_ sender: Any) {
        changeValue(val: 5, target: 4)
    }
    @IBAction func negFiveForP4(_ sender: Any) {
        changeValue(val: -5, target: 4)
    }
    
    
    
}

