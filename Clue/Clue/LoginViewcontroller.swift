//
//  LoginViewController.swift
//  Clue
//
//  Created by 김선호 on 1/25/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    struct UserList: Codable {
        let totalCount: Int
        let users: [User]
    }

    struct User: Codable {
        let id: String
        let pw: String
    }
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var idTextfield: UITextField!
    @IBOutlet weak var pwTextfield: UITextField!
    
    func load() -> Data? {
        guard let fileLocation = Bundle.main.url(forResource: "temp", withExtension: "json") else { return nil }
        
        do {
            let data = try Data(contentsOf: fileLocation)
            return data
        } catch {
            return nil
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        var loginFailed: Bool = true
        var id: String? = idTextfield.text!
        var pw: String? = pwTextfield.text!
        
        guard
            let jsonData = load(),
            let userList = try? JSONDecoder().decode(UserList.self, from: jsonData)
        else { return }
        
        for i in 0..<userList.totalCount{
            if userList.users[i].id == id && userList.users[i].pw == pw{
                loginFailed = false
            }
        }
        
        if !loginFailed {
            let success = UIAlertController(title: "Login", message: "Success", preferredStyle: .alert)
            success.addAction(UIAlertAction(title: "확인", style: .cancel, handler: nil))
            present(success, animated: true)
        } else {
            let failed = UIAlertController(title: "Login", message: "Failed", preferredStyle: .alert)
            failed.addAction(UIAlertAction(title: "확인", style: .cancel, handler: nil))
            present(failed, animated: true)
        }
    }
    
    @IBAction func findButton(_ sender: Any) {
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
