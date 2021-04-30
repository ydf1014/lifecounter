//
//  ViewController.swift
//  lifecounter2
//
//  Created by Danfeng Yang on 4/29/21.
//

import UIKit
var history:[String] = []
class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIStackView!
    var count : Int = 1
    var history = false
    
    @IBAction func subtractPlayer(_ sender: Any) {
        NSLog("subtracting player")
        if (count >= 2) {
            if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }else{
                NSLog("No!")
            }
            count -= 1
        } else {
            NSLog("can't have lsss than 2")
        }
    }
    
    @IBAction func addPlayer(_ sender: Any) {
        if (count <= 8) {
            addPlayerFunction(count: count)
            count += 1
        } else {
            NSLog("max hit")
        }
    }
    
    
    func addPlayerFunction(count : Int) {
        let name = "user " + String(count)
        let age = 20

        let personPanel = userView()
        personPanel.data = (name, age)
        contentView.addArrangedSubview(personPanel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addPlayerFunction(count: 1)
        addPlayerFunction(count: 2)
        addPlayerFunction(count: 3)
        addPlayerFunction(count: 4)
    }


}

