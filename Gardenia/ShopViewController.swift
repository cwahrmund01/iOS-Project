//
//  ShopViewController.swift
//  Gardenia
//
//  Created by Cedric on 10/27/21.
//

import UIKit

class ShopViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet var harvestablesValueLabel: UILabel!
    @IBOutlet var moneyLabel: UILabel!
    
    var costs: [String: Int] = ["blueberry" : 10,
                                "pepper" : 7,
                                "bean" : 5,
                                "tomato" : 7,
                                "strawberry" : 10,
                                "fertilizer" : 3,
                                "garden": 50,
                                "windowsill" : 75,
                                "meadow" : 100]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moneyLabel.text = "\(userInventory.money)"
        harvestablesValueLabel.text = "$\(userInventory.getValueOfHarvestables())"
    }
    
    
    // Functions for recogniczing tap gestures on different items in the shop
    @IBAction func blueberryDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.money < costs["blueberry"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["blueberry"]!
            userInventory.seeds["blueberry"]? += 1
        }
        updateDynamicUI()
    }
    @IBAction func pepperDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.money < costs["pepper"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["pepper"]!
            userInventory.seeds["pepper"]? += 1
        }
        updateDynamicUI()
    }
    @IBAction func beanDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.money < costs["bean"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["bean"]!
            userInventory.seeds["bean"]? += 1
        }
        updateDynamicUI()
    }
    @IBAction func tomatoDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.money < costs["tomato"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["tomato"]!
            userInventory.seeds["tomato"]? += 1
        }
        updateDynamicUI()
    }
    @IBAction func strawberryDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.money < costs["strawberry"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["strawberry"]!
            userInventory.seeds["strawberry"]? += 1
        }
        updateDynamicUI()
    }
    @IBAction func fertilzerDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.money < costs["fertilizer"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["fertilizer"]!
            userInventory.feritlizer += 1
        }
        updateDynamicUI()
        
    }
    @IBAction func gardenDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.hasGardenBackground {
            print("background owned already")
        } else if userInventory.money < costs["garden"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["garden"]!
            userInventory.hasGardenBackground = true
        }
        updateDynamicUI()
    }
    @IBAction func windowsillDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.hasWindowsillBackground {
            print("background owned already")
        } else if userInventory.money < costs["windowsill"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["windowsill"]!
            userInventory.hasWindowsillBackground = true
        }
        updateDynamicUI()
    }
    @IBAction func meadowDidTap (recognizer: UITapGestureRecognizer) {
        if userInventory.hasMeadowBackground {
            print("background owned already")
        } else if userInventory.money < costs["meadow"]! {
            print("money too low handler here")
        } else {
            userInventory.money -= costs["meadow"]!
            userInventory.hasMeadowBackground = true
        }
        updateDynamicUI()
    }
    @IBAction func sellHarvestablesDidTap (recognizer: UITapGestureRecognizer) {
        let curValue = userInventory.getValueOfHarvestables()
        if curValue > 0 {
            userInventory.money += curValue
            userInventory.emptyHarvestInventory()
            harvestablesValueLabel.text = "$\(userInventory.getValueOfHarvestables())"
            updateDynamicUI()
        }
    }
    
    
    func updateDynamicUI() {
        moneyLabel.text = "\(userInventory.money)"
    }
}
