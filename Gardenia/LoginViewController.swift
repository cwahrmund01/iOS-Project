//
//  LoginViewController.swift
//  Gardenia
//
//  Created by Luisa Elizabeth Espinoza on 10/27/21.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textFieldUser: UITextField!
    @IBOutlet weak var textFieldPass: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    @IBOutlet weak var buttonRegister: UIButton!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        Auth.auth().addStateDidChangeListener() {
            auth, user in
            
            if user != nil {
                //self.performSegue(withIdentifier: "mainVC", sender: nil)
                self.textFieldUser.text = nil
                self.textFieldPass.text = nil
            }
        }
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        guard let email = textFieldUser.text,
              let pass = textFieldPass.text,
              email.count >= 7,
              pass.count >= 7
        else {
            let alert = UIAlertController(
              title: "Sign in failed",
              message: "Please check fields."
            ,
              preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"OK",style:.default))
            self.present(alert, animated: true, completion: nil)

            return
        }
        Auth.auth().signIn(withEmail: textFieldUser.text!, password: textFieldPass.text!) { user, error in
            if let error = error, user == nil {
                let alert = UIAlertController(
                  title: "Failed to Sign In.",
                  message: error.localizedDescription,
                  preferredStyle: .alert)
                alert.addAction(UIAlertAction(title:"OK",style:.default))
                self.present(alert, animated: true, completion: nil)
            } else {
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
