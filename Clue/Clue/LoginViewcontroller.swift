//
//  LoginViewController.swift
//  Clue
//
//  Created by 김선호 on 1/25/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var idTextfield: UITextField!
    
    @IBOutlet weak var pwTextfield: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    @IBAction func findButton(_ sender: Any) {
    }
    
    @IBAction func signupButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loginViewController = segue.destination as! GameViewController
        if segue.identifier == "loginButton"{ //if loginButton clicked
            
        }
        else if segue.identifier == "findButton"{ //if findButton clicked
            print("findButton")
        }
        else if segue.identifier == "signupButton"{ //if signupButton clicked
            print("signupButton")
            
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
