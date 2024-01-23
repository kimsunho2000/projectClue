//
//  GameViewController.swift
//  Clue
//
//  Created by 김선호 on 1/14/24.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    @IBOutlet weak var getID: UITextField!
    
    @IBOutlet weak var getPW: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginButton(_ sender: Any) {
    }
    
    @IBAction func findButton(_ sender: Any) {
        
    }
    
    @IBAction func enrollButton(_ sender: Any) {
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
