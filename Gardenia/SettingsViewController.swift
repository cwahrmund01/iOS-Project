//
//  SettingsViewController.swift
//  Gardenia
//
//  Created by Wynne Yang on 11/9/21.
//

import UIKit
import AVFoundation

class SettingsViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //dark mode = ios 13
    @IBOutlet weak var lightDarkSwitch: UISwitch!
    
    @IBAction func lightDarkSwitch(_ sender: UISwitch) {
        
        if #available(iOS 13.0, *) {
            let appDelegate = UIApplication.shared.windows.first
            if sender.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }

            appDelegate?.overrideUserInterfaceStyle = .light
            return
        } else {
            let alert = UIAlertController(title: "Incompatible Platform",
                                          message: "Switching modes is not compatible with this platform.",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
            return

        }
        
    }
    
    @IBAction func volumeSwitch(_ sender: UISwitch) {
        
        if let player = player, player.isPlaying {
            player.stop()
            
            //stop playback
        } else {
            let urlString = Bundle.main.path(forResource: "audio", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                    
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    
                    return
                }
                
                player.play()
            }
            
            catch {
                print("something went wrong")
                
            }
            
        }
        
        //insert volume stuff here
    }
    
    @IBAction func notificationSwitch(_ sender: UISwitch) {
        //insert notif stuff here
    }
    
    @IBAction func pfpButtonLibraryPressed(_ sender: Any) {
        //insert camera stuff here
        
    }
    

    
    @IBAction func changeUserPassButtonPressed(_ sender: Any) {
        
        
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
