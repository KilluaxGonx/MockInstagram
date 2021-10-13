//
//  LoginViewController.swift
//  MockInstagram
//
//  Created by Recleph Mere on 10/12/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func loginOnClick(_ sender: Any) {
        
        let usernameField = username.text!
        let passwordField = password.text!
        
        PFUser.logInWithUsername(inBackground: usernameField, password: passwordField)
        { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "LoginToFeed", sender: nil)
            } else {
                print("Error while loggin in: \(error)")
            }
        }
        
        
    }
    
    
    @IBAction func onRegisterClick(_ sender: Any) {
        
        let user = PFUser()
        user.username = username.text
        user.password = password.text
        
    user.signUpInBackground { (succeeded: Bool, error: Error?) -> Void in
        if let error = error {
          let errorString = error.localizedDescription
            print("Error while signing up: \(errorString)")
          // Show the errorString somewhere and let the user try again.
        } else {
          // Hooray! Let them use the app now.
            self.performSegue(withIdentifier: "LoginToFeed", sender: nil)
        }
      }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
