# iOS-Project
---
**Name of Project:** Gardenia  
**Team members:** Aayam Sharma, Cedric Wahrmund, Luisa Espinoza, Wynne Yang  
**Dependencies:** Xcode 13.1, Swift 5

**Special Instructions:**  
- Use an iPhone 12 Pro Max simulator  
- Before running the app, run pod install inside the Gardenia folder where the podfile is located  
- Use this test account for logging in:  
  email: luisa@gmail.com  
  password: 12345678  
- We created over 50 accounts when testing, these are three we have not created:  
  - email: bulko@email.com
  - email: math@gmail.com
  - email: utaustin@yahoo.com  
- For the animation, create a blueberry plant, fertilize it (if you can't, go to the shop and buy some), and wait around 60 seconds. The collection view updates when it appears. So after 30 seconds, if you go to the shop and come back, some change should occour. After 60 seconds, go into the plant, once harvest is green, tapping it will change plant image.
- Blueberry is the only plant that shows changes in the short term. The other plants have lifecycles/consumption duration in the scale of days. The fertilizer and harvest are both significantly accelerated for demonstration purposes for blueberry (while water consumption rate was left at default). The life cycle for plants are listed in an array at the top of collectionViewCell.swift, with blueberry being drastically shorter than other.
- When you are on the Table View of Events, to delete the events you just created to the Apple Calendar, swipe and delete on the cell.
- The animation after pressing the fertilize button is very slow. If there is no animation, please go to the shop and buy some fertilizer.
- Registering resets the garden and inventory and profile picture.

**Required feature checklist**  
- [x] Login/register path with Firebase: When launched, it's immediately there (initial VC).
- [x] "Settings" screen. The three behaviors we implemented are: light/dark mode, sound on/off, notification, on/off.
- [x] Non-default fonts and colors used: Throughout the app.

Two major elements used:  
- [x] Core Data: To save/store garden, inventory, events, and sound.  
- [x] User Profile path using camera and photo library: In the settings page.
- [ ] Multithreading
- [ ] SwiftUI

Minor elements used:
- [x] Two additional view types such as sliders, segmented controllers, etc. The two we implemented are: switches and segmented controllers: segmented controllers in CalendarVC. Switches are in the Settings vc. 

  One of the following: 
  - [x] Table View: In the Calendar VC, when you click on ViewEvents... button.
  - [x] Collection View: In the Garden VC.
  - [ ] Tab VC
  - [ ] Page VC  
  
  Two of the following:  
  
  - [x] Alerts: When deleting plants, insufficient amount of seeds during plant creation. Insufficient funds in the Shop VC. Alerting when settings are changed. When creating an event.
  - [ ] Popovers
  - [x] Stack Views: How the Shop VC was organized.
  - [ ] Scroll Views
  - [ ] Haptics
  - [x] User Defaults: Storing the state of the sound and notification switches.  
  
  At least one of the following per team member:    
  
  - [ ] Local notifications
  - [ ] Core Graphics
  - [x] Gesture Recognition: Tap gestures when buying things in shop.
  - [x] Animation: Plant shrinking after harvest button.
  - [x] Calendar: Create events through Calendar VC, through text fields, date pickers, segmented controls. Can delete events when swiping and deleting on Table View.
  - [ ] Core Motion
  - [ ] Core Location / MapLit
  - [x] Core Audio: Throughout the app, shuffling noises when different VC show up.
  
**Work Distribution Table:**
| Required Features | Description | Who/% Worked On |  
|----------------|---------------|---------------|
| Login/Register | Allow user to create new account and access to previous account. | Wynne 100%
| Settings  | Light/dark mode, sound on/off, notification on/off. Allows for user pfp to be edited, logout and password changing. | Wynne 100%
| Non-default colors and fonts | Throughout the entire app | Aayam 40% <br/> Cedric 40% <br/> Luisa 10% <br/> Wynne 10% |
| Core Data  | Storing user data preferences for shop, garden, settings, and events created | Aayam 25% <br/> Cedric 25% <br/> Luisa 25% <br/> Wynne 25%
| User Profile | Camera and photo library and editing and creating profile | Wynne 100%
| Additional Views | Switches, segmented controllers, etc. | Aayam 20% <br/> Cedric 20% <br/> Luisa 30% <br/> Wynne 30%
| Table View | Inside the calendar implementation. Updated with every event created in Apple Calendar. | Luisa 100%
| Alerts, User Defaults | In various VC's in the app | Aayam 25% <br/> Cedric 25% <br/> Luisa 25% <br/> Wynne 25%
| Gesture Recognition, Animation, Calendar, Core Audio | In various VC's in the app | Aayam 25% <br/> Cedric 25% <br/> Luisa 25% <br/> Wynne 25%
| Collection View | Plants in garden are added into a collection view. | Aayam 100%

 
