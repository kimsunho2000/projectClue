//
//  LoginViewController.swift
//  Clue
//
//  Created by 김선호 on 1/25/24.
//
import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var idTextfield: UITextField!
    
    @IBOutlet weak var pwTextfield: UITextField!
    
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
    }
    
    @IBAction func findButton(_ sender: Any) {
    }
    
    @IBAction func signupButton(_ sender: Any) {
    }
    @objc private func detectingLoginInput(_textField: UITextField){ //this function can detect user's login input.if user write wrong input,each input bar will change to red background and alert them to rewrite.
        let regularExpressionPattern = "^[a-zA-Z0-9]*$" //only alphabet,digits available
        var isWriteInput = _textField.text?.range(of: regularExpressionPattern, options: .regularExpression ) != nil
        print(_textField.layer.cornerRadius + _textField.layer.borderWidth)
        if isWriteInput == false {
            _textField.layer.borderColor = UIColor.systemRed.cgColor
            _textField.layer.cornerRadius = 5
            _textField.layer.borderWidth = 3
            errorMessageLabel.textColor = .red
            errorMessageLabel.text = "Please enter only English and numbers"
        }
        else{
            _textField.layer.borderColor = UIColor.systemGray2.cgColor
            _textField.layer.cornerRadius = 0
            _textField.layer.borderWidth = 0
            errorMessageLabel.text = nil
       
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.idTextfield.addTarget(self, action: #selector(self.detectingLoginInput(_textField:)), for: .editingChanged)
        self.pwTextfield.addTarget(self, action: #selector(self.detectingLoginInput(_textField:)), for: .editingChanged)

        // Do any additional setup after loading the view.
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

