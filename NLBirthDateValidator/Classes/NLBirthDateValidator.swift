//
//  NLBirthDateValidator.swift
//  NLBirthDateValidator
//
//  Created by Kale on 9/6/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

class NLBirthDateValidator: NSObject {

    class func checkBirthDate(day: String, month: String, year: String, minimumAge: Int?) -> Bool {
        
        let dateString = "\(day)/\(month)/\(year)"
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let testDate = dateFormatter.dateFromString(dateString)
        
        if testDate == nil {
            
            // this is not a valid date
            
            return false
        }
        
        let calendar = NSCalendar.currentCalendar()
        var components = calendar.components([.Year], fromDate: testDate!)
        
        let birthDateYearNum = components.year
        
        components = calendar.components([.Year], fromDate: NSDate())
        
        let currentYearNum = components.year
        
        //check minimum age
        
        var testAge: Int
        
        if let age = minimumAge {
            
            testAge = age
        }
        else {
            
            testAge = 0
        }
        
        if birthDateYearNum > (currentYearNum - testAge) {
            
            // this birthdate is below the minimum age
            
            return false
        }
        
        return true
    }
}
