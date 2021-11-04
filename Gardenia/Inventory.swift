//
//  Inventory.swift
//  Gardenia
//
//  Created by Cedric on 11/3/21.
//

import Foundation

class Inventory {

    var money: Int = 100
    var feritlizer: Int = 5
    var hasGardenBackground: Bool = false
    var hasWindowsillBackground: Bool = false
    var hasMeadowBackground: Bool = false
    
    var seeds: [String: Int] = ["blueberry" : 0,
                                "strawberry" : 0,
                                "bean" : 0,
                                "pepper" : 0,
                                "tomato" : 0]
    
    var harvests: [String: Int] = ["blueberry" : 0,
                                "strawberry" : 0,
                                "bean" : 0,
                                "pepper" : 0,
                                "tomato" : 0]
    
    var values: [String: Int] = ["blueberry" : 10,
                                "strawberry" : 10,
                                "bean" : 5,
                                "pepper" : 7,
                                "tomato" : 7]
    
    func getValueOfHarvestables() -> Int {
        var total = 0
        for (fruit, num) in harvests {
            let val = values[fruit]
            total += val! * num
        }
        return total
    }
    
    func emptyHarvestInventory() {
        for (fruit, _) in harvests {
            harvests[fruit] = 0
        }
    }
}
