//
//  PlantViewController.swift
//  Gardenia
//
//  Created by Aayam Sharma on 10/20/21.
//

import UIKit

class PlantViewController: UIViewController {
    
    var totalFert:Float = 0.1
    var fertProg:Float = 1.0
    
    @IBOutlet var mainPlant: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainPlant.image = UIImage(named: "modelPlantSmall")

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
    
    @IBOutlet var fertProgress: UIProgressView!
    
    @IBAction func fertelize(){
        fertProg = fertProg - 0.3
        totalFert += 0.3
        if totalFert >= 0.9{
            mainPlant.image = UIImage(named: "modelPlantLarge")
        }
        else if totalFert >= 0.45{
            mainPlant.image = UIImage(named: "modelPlantMedium")
        }
        fertProgress.setProgress(fertProg, animated: true)
        super.viewDidLoad()
    }
}
