//
//  CalendarViewController.swift
//  Gardenia
//
//  Created by Luisa Elizabeth Espinoza on 10/27/21.
//

import UIKit
import EventKitUI
import EventKit

class CalendarViewController: UIViewController, EKEventViewDelegate {
    
    let storedEvents = EKEventStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
        // Do any additional setup after loading the view.
    }
    
    @objc func didTapAdd() {
//        let vc = EKCalendarChooser()
//        vc.showsDoneButton = true
//        vc.showsCancelButton = true
//        vc.delegate = self
//        present(vc, animated: true)
        
        storedEvents.requestAccess(to: .event) { [weak self] success, error in
            if success, error == nil {
                DispatchQueue.main.async {
                    
                    guard let storedEvents = self?.storedEvents else {return}
                    
                    let newEvent = EKEvent(eventStore: storedEvents)
                    newEvent.title = "Reminder to water your plants"
                    newEvent.startDate = Date()
                    newEvent.endDate = Date()
                    
                    let otherVC = EKEventEditViewController()
                    otherVC.eventStore = storedEvents
                    otherVC.event = newEvent
                    self?.present(otherVC, animated: true, completion: nil)
                    
//                    let vc = EKEventViewController()
//                    vc.delegate = self
//                    vc.event = newEvent
//                    let navVC = UINavigationController(rootViewController: vc)
//                    self?.present(vc, animated: true)
                }
            }
        }
    }
    
    func eventViewController(_ controller: EKEventViewController, didCompleteWith action: EKEventViewAction) {
        controller.dismiss(animated: true, completion: nil)
    }


}
