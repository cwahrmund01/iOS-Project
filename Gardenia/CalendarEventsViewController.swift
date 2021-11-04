//
//  CalendarEventsViewController.swift
//  Gardenia
//
//  Created by Luisa Elizabeth Espinoza on 11/3/21.
//

import UIKit

calendarList = ["date1", "date2"]

class CalendarEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calendar Events"
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calendarList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        let row - indexPath.row
        cell.textLabel?.text = "\(calendarList[row])"
        return cell
    }
    
    // Swiping and deleting, but it also has to delete from calendar view. may need to use core data
    // can use pizza assignment
    
        
        // Swiping and deleting

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
