//
//  ShopViewController.swift
//  Gardenia
//
//  Created by Cedric on 10/27/21.
//

import UIKit

class ShopViewController: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet var strawberryButton: UIButton!
    @IBOutlet var windowButton: UIButton!
    @IBOutlet var sellHarvestButton: UIButton!
    @IBOutlet var moneyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strawberryButton.titleLabel?.lineBreakMode = .byClipping
        strawberryButton.titleLabel?.numberOfLines = 1
        windowButton.titleLabel?.lineBreakMode = .byClipping
        windowButton.titleLabel?.numberOfLines = 1
        sellHarvestButton.titleLabel?.lineBreakMode = .byClipping
        sellHarvestButton.titleLabel?.numberOfLines = 1
    }

    @IBAction func blueberryBuy(_ sender: Any) {
    }
    
    @IBAction func pepperBuy(_ sender: Any) {
    }
    
    @IBAction func beansBuy(_ sender: Any) {
    }
    
    @IBAction func tomatoBuy(_ sender: Any) {
    }
    
    @IBAction func strawberryBuy(_ sender: Any) {
    }
    
    @IBAction func fertilizerBuy(_ sender: Any) {
    }
    
    @IBAction func gardenBackgroundBuy(_ sender: Any) {
    }
    
    @IBAction func windowBackgroundBuy(_ sender: Any) {
    }
    
    @IBAction func meadowBackgroundBuy(_ sender: Any) {
    }
    
    @IBAction func sellAllHarvestables(_ sender: Any) {
        moneyLabel.text = "123"
    }
    
    
}
