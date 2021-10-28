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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strawberryButton.titleLabel?.lineBreakMode = .byClipping
        strawberryButton.titleLabel?.numberOfLines = 1
        windowButton.titleLabel?.lineBreakMode = .byClipping
        windowButton.titleLabel?.numberOfLines = 1
        sellHarvestButton.titleLabel?.lineBreakMode = .byClipping
        sellHarvestButton.titleLabel?.numberOfLines = 1
    }

    
}
