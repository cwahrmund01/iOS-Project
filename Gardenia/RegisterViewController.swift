//
//  RegisterViewController.swift
//  Gardenia
//
//  Created by Luisa Elizabeth Espinoza on 10/27/21.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var textFieldUser: UITextField!
    @IBOutlet weak var textFieldPass: UITextField!
    @IBOutlet weak var textFieldConfirmPass: UITextField!
    @IBOutlet weak var buttonRegister: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        
        guard let user = textFieldUser.text,
              let pass = textFieldPass.text,
              let confirmPass = textFieldConfirmPass.text,
              user.count >= 7 ,
              pass.count >= 7,
              confirmPass.count >= 7,
              pass == confirmPass
        else {
            let alert = UIAlertController(
              title: "Sign up failed",
              message: "Please check fields."
            ,
              preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"OK",style:.default))
            self.present(alert, animated: true, completion: nil)
            return
        }
        // Check password match for signing up
        if (pass != confirmPass) {
            let alert = UIAlertController(
              title: "Sign up failed",
              message: "Password mismatch."
            ,
              preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"OK",style:.default))
            self.present(alert, animated: true, completion: nil)
            return
        }
        Auth.auth().createUser(withEmail: textFieldUser.text!, password: textFieldPass.text!) { user, error in
            if let error = error, user == nil {
                let alert = UIAlertController(
                  title: "Sign up failed",
                  message: "Please check fields."
                ,
                  preferredStyle: .alert)
                alert.addAction(UIAlertAction(title:"OK",style:.default))
                self.present(alert, animated: true, completion: nil)
                return
            } else {
                Auth.auth().signIn(withEmail: self.textFieldUser.text!,
                                   password: self.textFieldPass.text!)
                self.performSegue(withIdentifier: "mainVC", sender: nil)
            }
            
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
