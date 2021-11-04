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
    var totalWater: Float = 0.1
    var waterProg: Float = 1.0
    var totalHarvest: Float = 0.1
    var harvestProg: Float = 0.0
    var plantLife: Float = 0.1
    var harvested: Int = 0
    
    
    @IBOutlet var mainPlant: UIImageView!
    @IBOutlet var basket: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainPlant.image = UIImage(named: "modelPlantSmall")
        basket.image = UIImage(named:"basket")

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
    @IBOutlet var waterProgress: UIProgressView!
    @IBOutlet var harvestProgress:UIProgressView
    @IBOutlet var harvestCount: UILabel!
    
    @IBAction func fertelize(){
        fertProg = fertProg - 0.3
        plantLife += 0.3
        fertProgress.setProgress(fertProg, animated: true)
        evaulatePlant()
        
    }
    @IBAction func water(){
        waterProg = waterProg - 0.3
        plantLife += 0.2
        waterProgress.setProgress(waterProg, animated: true)
        evaulatePlant()
    }
    @IBAction func harvest(){
        harvestProg = harvestProg + 0.1
        if harvestProg % 0.2 == 0{
            harvested += 1
        }
        plantLife -= 0.1
        harvestProgress.setProgress(harvestProg, animated: true)
        evaulatePlant()
        
    }
    func evaulatePlant(){
        if totalFert >= 0.9{
            mainPlant.image = UIImage(named: "modelPlantLarge")
        }
        else if totalFert >= 0.45{
            mainPlant.image = UIImage(named: "modelPlantMedium")
        }
        harvestCount.text = String(harvested)
        super.viewDidLoad()
        
    }
    
}
