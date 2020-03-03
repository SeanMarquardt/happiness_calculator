//
//  CellTableViewCell.swift
//  NotificationPatternsJournal
//
//  Created by Sean Marquardt on 3/3/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var higherOrLower: UILabel!
    @IBOutlet weak var isEnabled: UISwitch!
    
    
    // MARK: - Properties
    
    var entry: Entry?
    
    
    // MARK: - Helper functions
    
    func setEntry(entry: Entry, averageHappiness: Int) {
        self.entry = entry
        
        
    }
    
    func updateUI(averageHappiness: Int) {
        
        guard let entry = entry else {return}
        titleLabel.text = entry.title
        isEnabled.isOn = entry.isIncluded
        
        //Update higherOrLowerLabel after notifications
    }
}
