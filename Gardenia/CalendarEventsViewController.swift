//
//  CalendarEventsViewController.swift
//  Gardenia
//
//  Created by Luisa Elizabeth Espinoza on 11/3/21.
//

import UIKit
import EventKitUI
import EventKit

class CalendarEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var calendar: EKCalendar!
    var events: [EKEvent]?
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Calendar Events"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "yyyy-MM-dd"
         
         // Create start and end date NSDate instances to build a predicate for which events to select
         let startDate = dateFormatter.date(from: "2022-01-01")
         let endDate = dateFormatter.date(from: "2021-08-31")
         
         if let startDate = startDate, let endDate = endDate {
             let eventStore = EKEventStore()
             
             // Use an event store instance to create and properly configure an NSPredicate
             let eventsPredicate = eventStore.predicateForEvents(withStart: startDate, end: endDate, calendars: [calendar!])
             
             // Use the configured NSPredicate to find and return events in the store that match
             self.events = eventStore.events(matching: eventsPredicate).sorted(){
                 (e1: EKEvent, e2: EKEvent) -> Bool in
                 return e1.startDate.compare(e2.startDate) == ComparisonResult.orderedAscending
             }
         }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = "\(events![row])"
        return cell
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        self.event = EKEventStore()
//        self.reminder = [EKReminder]()
//        self.eventStore.requestAccess(to: EKEntityType.reminder) { (granted, error) in
//            if granted{
//                let predicate = self.eventStore.predicateForReminders(in: nil)
//                self.eventStore.fetchReminders(matching: predicate, completion: { reminders in
//                    guard let reminders = reminders else {
//                        return
//                    }
//                    self.reminders = reminders
//                    DispatchQueue.main.async {
//                        self.tableView.reloadData()
//                    }
//                })
//            } else {
//                print("The app is not permitted to access reminders, make sure to grant permission in the settings and try again")
//            }
//        }
//    }

}
